.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;
.super Landroid/telephony/ims/ProvisioningManager$Callback;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5896
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/ProvisioningManager$Callback;-><init>()V

    return-void
.end method

.method private blacklist queueAndSendProvisioningChanged(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;)V
    .locals 2

    .line 5956
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 5960
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmProvisioningItemQueue(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5963
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5964
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist onProvisioningIntChanged(II)V
    .locals 1

    .line 5901
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 5902
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->queueAndSendProvisioningChanged(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;)V

    return-void
.end method

.method public whitelist onProvisioningStringChanged(ILjava/lang/String;)V
    .locals 1

    .line 5921
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 5922
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$13;->queueAndSendProvisioningChanged(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;)V

    return-void
.end method
