.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SehHostapdDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;


# direct methods
.method public static synthetic $r8$lambda$UvrHZ4f_9532OX-rQWy-Xsm6ZQM(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;->lambda$serviceDied$0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V

    return-void
.end method

.method private synthetic lambda$serviceDied$0(J)V
    .locals 4

    .line 1
    const-string v0, "ISehHostapd died: cookie="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$fputisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;Z)V

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$fputmISehHostapd(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
