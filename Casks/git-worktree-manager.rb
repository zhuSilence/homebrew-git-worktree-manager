cask "git-worktree-manager" do
  version "0.0.7"
  
  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v#{version}/Git.Worktree.Manager_#{version}_x64.dmg"
      sha256 "b2e39e530dec312e55de970b6395f1286d1237ec9aa18ddd08cc3913902a346c"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v#{version}/Git.Worktree.Manager_#{version}_aarch64.dmg"
      sha256 "62b717bc2081507dd5f97d644d1bc4026ae873adb5bf75cecff360dd39d8b5c4"
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

  binary "#{appdir}/Git Worktree Manager.app/Contents/MacOS/git-worktree-manager"

  zap trash: [
    "~/Library/Application Support/git-worktree-manager",
    "~/Library/Caches/git-worktree-manager",
    "~/Library/HTTPStorages/git-worktree-manager",
    "~/Library/Preferences/com.git-worktree-manager.app.plist",
    "~/Library/Saved Application State/com.git-worktree-manager.app.savedState",
  ]
end
