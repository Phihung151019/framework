.class Lcom/samsung/android/game/GoogleGameManagerService;
.super Ljava/lang/Object;
.source "GoogleGameManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleGameManagerService"


# instance fields
.field private mGameManagerService:Landroid/app/IGameManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GoogleGameManagerService;->mGameManagerService:Landroid/app/IGameManagerService;

    .line 11
    return-void
.end method


# virtual methods
.method public toggleGameDefaultFrameRate(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isEnabled"    # Z

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/GoogleGameManagerService;->mGameManagerService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_0

    .line 16
    const-string v0, "game"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/GoogleGameManagerService;->mGameManagerService:Landroid/app/IGameManagerService;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GoogleGameManagerService;->mGameManagerService:Landroid/app/IGameManagerService;

    invoke-interface {v0, p2}, Landroid/app/IGameManagerService;->toggleGameDefaultFrameRate(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GoogleGameManagerService"

    const-string v2, "toggleGameDefaultFrameRate(). Exception occurred."

    invoke-static {v1, v2, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
