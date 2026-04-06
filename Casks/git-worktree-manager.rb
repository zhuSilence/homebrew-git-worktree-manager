cask "git-worktree-manager" do
  version "0.0.11"

  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_x64.dmg"
      sha256 "1b4ddb959f8f2384b8debfdcdafd835c52e21301a54d5b393cfb64376eca309a"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_aarch64.dmg"
      sha256 "395f5fa0a9fced5f893226429f09698283a9b103ecffc4bbe4edc48c763b7741"
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
