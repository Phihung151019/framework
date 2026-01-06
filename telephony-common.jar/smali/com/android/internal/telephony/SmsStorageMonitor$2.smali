.class Lcom/android/internal/telephony/SmsStorageMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsStorageMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 396
    const-string p1, "BroadcastReceiver - mGcfResultReceiver "

    const-string v0, "SmsStorageMonitor1"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string p1, "ril.sms.gcf-mode"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "On"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$fgetmSmsLogger(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "ACTION_GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p1, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 401
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v3, p1, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 403
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 404
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$fgetmSmsLogger(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object p2, p2, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    const-string v2, "ACTION_GCF_DEVICE_STORAGE_OK"

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 405
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object p2, p1, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 406
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    :cond_1
    return-void
.end method
