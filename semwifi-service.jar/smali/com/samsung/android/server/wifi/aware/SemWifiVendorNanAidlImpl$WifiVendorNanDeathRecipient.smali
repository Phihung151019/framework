.class Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiVendorNanDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    const-string v1, "SemWifiVendorNanAidlImpl"

    .line 9
    .line 10
    const-string v2, "IWifiVendorNan binder died."

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->-$$Nest$mwifiVendorNanServiceDiedHandler(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method
