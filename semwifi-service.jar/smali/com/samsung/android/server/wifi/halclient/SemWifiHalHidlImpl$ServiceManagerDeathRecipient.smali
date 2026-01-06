.class Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceManagerDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 1

    .line 1
    const-string v0, "IServiceManager died: cookie="

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "SemWifiHalHidlImpl"

    .line 8
    .line 9
    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fputmServiceManager(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
