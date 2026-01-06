.class Lcom/samsung/android/server/wifi/SemApeServiceImplV1$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$2;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$2;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$2;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 p1, 0x9

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
