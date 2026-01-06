.class Lcom/android/internal/telephony/PduTest$1;
.super Landroid/content/BroadcastReceiver;
.source "PduTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PduTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/PduTest;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/PduTest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {}, Lcom/android/internal/telephony/PduTest;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v0}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetLOG_TAG(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIntentReceiver.onReceive: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "com.android.internal.telephony.PduTest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 45
    const-string p1, "phoneId"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 46
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    const-string v2, "hexString"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 48
    iget-object v2, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v2}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetLOG_TAG(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntentReceiver.onReceive: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pduType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pduHexString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v2}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/PduTest;)I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {p0}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetLOG_TAG(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mIntentReceiver.onReceive: pduHexString is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_2
    invoke-static {p2}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_5

    const/4 p2, 0x1

    if-eq v0, p2, :cond_4

    const/4 p2, 0x2

    if-eq v0, p2, :cond_3

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {p0}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetLOG_TAG(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mIntentReceiver.onReceive: unsupported pduType"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {p0}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetmMessagingIndication(Lcom/android/internal/telephony/PduTest;)Lcom/android/internal/telephony/MessagingIndication;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/MessagingIndication;->newBroadcastSms(I[B)V

    return-void

    .line 63
    :cond_4
    iget-object p2, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {p2}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetLOG_TAG(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_CDMA_SMS"

    invoke-static {p2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/PduTest;->-$$Nest$mcreateFromPdu(Lcom/android/internal/telephony/PduTest;[B)Landroid/telephony/SmsMessage;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/android/internal/telephony/PduTest;->-$$Nest$mcdmaNewSms(Lcom/android/internal/telephony/PduTest;ILandroid/telephony/SmsMessage;)V

    return-void

    .line 59
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {p2}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetLOG_TAG(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_GSM_SMS"

    invoke-static {p2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {p0}, Lcom/android/internal/telephony/PduTest;->-$$Nest$fgetmMessagingIndication(Lcom/android/internal/telephony/PduTest;)Lcom/android/internal/telephony/MessagingIndication;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/MessagingIndication;->newSms(I[B)V

    :cond_6
    :goto_0
    return-void
.end method
