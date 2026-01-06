.class Lcom/samsung/android/server/wifi/halclient/SemHalTestManager$1;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->-$$Nest$fputmTimedOut(Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "SemHalTestManager"

    .line 13
    .line 14
    const-string v1, "EVENT_TIMEOUT"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroid/os/Bundle;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->-$$Nest$msendBroadcast(Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
