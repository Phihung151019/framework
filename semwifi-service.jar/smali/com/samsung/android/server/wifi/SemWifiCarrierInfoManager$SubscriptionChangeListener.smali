.class Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;-><init>(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmSubscriptionManager(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Landroid/telephony/SubscriptionManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fputmActiveSubInfos(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmSubIdToSimInfoSparseArray(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmSubscriptionGroupMap(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmVerboseLogEnabled(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "active subscription changes: "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmActiveSubInfos(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string v0, "SemWifiCarrierInfoManager"

    .line 67
    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method
