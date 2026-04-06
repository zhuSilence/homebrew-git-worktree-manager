cask "git-worktree-manager" do
  version "0.0.10"

  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_x64.dmg"
      sha256 "7bebd1e6b20736a66860a644527ebf17fe6fe341c872ad0f8402453991dd5e5f"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_aarch64.dmg"
      sha256 "a457ca056975df2175f1d233ddf3411499e763c4611875dfc9790f4f03ce70c0"
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
