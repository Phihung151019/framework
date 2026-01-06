.class Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$1;
.super Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/lang/Class;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$1;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleCallbackTimeout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$1;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->-$$Nest$mAddHistoryAndELog(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$1;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->-$$Nest$msetDefaultThresholdsAndInit(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public handleHookedScanResult(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$1;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->-$$Nest$mcheckScanResultAndReleaseHoldingIfNeeded(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/util/List;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
