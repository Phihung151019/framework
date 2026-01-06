.class Lcom/android/internal/telephony/SemGsmCdmaPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "SemGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 690
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 693
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TtyBroadcastReceiver - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget v0, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    const-string v0, "com.samsung.android.telecom.action.CURRENT_TTY_MODE_CHANGED_2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 698
    const-string p1, "android.telecom.extra.CURRENT_TTY_MODE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 699
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateTtyMode(IZ)V

    return-void

    .line 701
    :cond_0
    const-string v0, "com.samsung.android.telecom.action.TTY_PREFERRED_MODE_CHANGED_2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 702
    const-string p1, "android.telecom.extra.TTY_PREFERRED_MODE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 703
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateUiTtyMode(IZ)V

    :cond_1
    return-void
.end method
