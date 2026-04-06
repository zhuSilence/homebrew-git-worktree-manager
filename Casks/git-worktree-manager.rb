cask "git-worktree-manager" do
  version "0.0.12"

  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_x64.dmg"
      sha256 "d6c28006dd56c49a8f341ea279b200b64eab8d03b40d56d30d094f5ca183b08b"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v\#{version}/Git.Worktree.Manager_\#{version}_aarch64.dmg"
      sha256 "c13b5b5b82bd001e4864b6cf5ee41cc94a1766cece3930ceb6ed3d6d96504bde"
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
