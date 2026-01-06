.class Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$1;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "AbTestScpmController"

    .line 8
    .line 9
    const-string v0, "getScpmConfigurationName"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string p0, "wifi-ab-update-policy"

    .line 15
    .line 16
    return-object p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AbTestScpmController"

    .line 8
    .line 9
    const-string v1, "onScpmPolicyUpdated"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$1;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->-$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$1;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->-$$Nest$fgetmScpmControllerHandler(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;)Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {p0, v1, p1, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AbTestScpmController"

    .line 8
    .line 9
    const-string v1, "onScpmRegistered"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$1;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->-$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$1;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->-$$Nest$fgetmScpmControllerHandler(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;)Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {p0, v1, p1, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
