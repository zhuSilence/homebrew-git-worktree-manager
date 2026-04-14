cask "git-worktree-manager" do
  version "0.0.15"

  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_x64.dmg"
      sha256 "912678252e27243ae7be8bd93622eab2de496d60fb79687512034834c5a49de6"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_aarch64.dmg"
      sha256 "30f6acb25a8826e94f82d376078fd0cd5690e278da56d7ef8b164aaa3c76c7cd"
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
