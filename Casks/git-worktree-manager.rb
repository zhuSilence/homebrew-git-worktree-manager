cask "git-worktree-manager" do
  version "0.0.4"
  
  on_macos do
    on_intel do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v#{version}/Git.Worktree.Manager_#{version}_x64.dmg"
      sha256 "8db4f6c7c2a186a2b927d787f3349cd6b25af12a8632574d4c52d8e6e07f50d3"
    end
    on_arm do
      url "https://github.com/zhuSilence/git-worktree-manager/releases/download/v#{version}/Git.Worktree.Manager_#{version}_aarch64.dmg"
      sha256 "0d639c2451305b0dcb322c358fbc2cb914a7056a8ff38419f02b859658cae006"
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

  binary "#{appdir}/Git Worktree Manager.app/Contents/MacOS/Git Worktree Manager", target: "git-worktree-manager"

  zap trash: [
    "~/Library/Application Support/git-worktree-manager",
    "~/Library/Caches/git-worktree-manager",
    "~/Library/HTTPStorages/git-worktree-manager",
    "~/Library/Preferences/com.git-worktree-manager.app.plist",
    "~/Library/Saved Application State/com.git-worktree-manager.app.savedState",
  ]
end