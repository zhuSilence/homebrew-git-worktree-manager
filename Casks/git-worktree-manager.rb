cask "git-worktree-manager" do
  version "0.0.9"
  
  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v#{version}/Git.Worktree.Manager_#{version}_x64.dmg"
      sha256 "f4ee1023a1b178a1eeb8fca256724a5a781e82fae2e695346491c404d29be9b8"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v#{version}/Git.Worktree.Manager_#{version}_aarch64.dmg"
      sha256 "75bdb51e32d69f1dcfd69791bc7ee891f33ca187ff625385d06d28f0d5443da1"
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
