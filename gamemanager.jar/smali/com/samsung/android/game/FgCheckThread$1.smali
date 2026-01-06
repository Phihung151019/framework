.class Lcom/samsung/android/game/FgCheckThread$1;
.super Landroid/os/RemoteCallbackList;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/FgCheckThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/samsung/android/game/IGameManagerCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/game/FgCheckThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/FgCheckThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 80
    check-cast p1, Lcom/samsung/android/game/IGameManagerCallback;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/FgCheckThread$1;->onCallbackDied(Lcom/samsung/android/game/IGameManagerCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Lcom/samsung/android/game/IGameManagerCallback;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 83
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteCallback died, callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
