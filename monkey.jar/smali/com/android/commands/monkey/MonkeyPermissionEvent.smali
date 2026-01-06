.class public Lcom/android/commands/monkey/MonkeyPermissionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyPermissionEvent.java"


# instance fields
.field private mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 35
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 36
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 38
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 12
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 42
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 43
    .local v1, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v2

    .line 44
    .local v2, "permissionManager":Landroid/permission/IPermissionManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 47
    .local v6, "currentUser":I
    const/4 v8, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, "perm":I
    const/4 v9, 0x1

    if-ne v0, v8, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v10, v3

    .line 50
    .local v10, "grant":Z
    sget-object v3, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v4, ":Permission %s %s to package %s"

    .line 51
    if-eqz v10, :cond_1

    const-string v5, "grant"

    goto :goto_1

    :cond_1
    const-string v5, "revoke"

    :goto_1
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    filled-new-array {v5, v7, v11}, [Ljava/lang/Object;

    move-result-object v5

    .line 50
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 52
    if-eqz v10, :cond_2

    .line 53
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v5, "default:0"

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v5, "default:0"

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_2
    return v9

    .line 60
    .end local v0    # "perm":I
    .end local v10    # "grant":Z
    :catch_0
    move-exception v0

    .line 61
    .local v0, "re":Landroid/os/RemoteException;
    return v8
.end method
