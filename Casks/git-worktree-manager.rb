cask "git-worktree-manager" do
  version "0.0.10"

  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_x64.dmg"
      sha256 "30ba11078e6350482b9538a9fb5da679efdb96d6e8331d597109c9ebea253276"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_aarch64.dmg"
      sha256 "729c02db61dc2f8586392d37c4b441730b987b310492472700daa4a90b4ab9e6"
    end
  end

  name "Git Worktree Manager"
  desc "A GUI tool for managing Git worktrees"
  homepage "https://github.com/zhuSilence/git-worktree-manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Git Worktree Manager.app"

  binary "\#{appdir}/Git Worktree Manager.app/Contents/MacOS/git-worktree-manager"

  zap trash: [
    "~/Library/Application Support/git-worktree-manager",
    "~/Library/Caches/git-worktree-manager",
    "~/Library/HTTPStorages/git-worktree-manager",
    "~/Library/Preferences/com.git-worktree-manager.app.plist",
    "~/Library/Saved Application State/com.git-worktree-manager.app.savedState",
  ]
end
