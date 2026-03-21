cask "git-worktree-manager" do
  version "0.0.6"
  
  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v#{version}/Git.Worktree.Manager_#{version}_x64.dmg"
      sha256 "85f4a8a93571a155576ada42d5d9d5a65a77c481729f0e0e58a10751977568c7"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v#{version}/Git.Worktree.Manager_#{version}_aarch64.dmg"
      sha256 "218f562f8e16b41ce31fbc08b4b995a3c1eb33152f16bd328117b1e1f37ec740"
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
