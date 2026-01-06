.class Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SemSatelliteInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 130
    const-string p1, "com.samsung.intent.action.PPSMS_USERCONFIRM_RESPONSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->access$000(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;I)V

    .line 132
    invoke-static {}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "User confirm response is received"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string p1, "userconfirm"

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 135
    invoke-static {}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "User confirmed"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$mstartIOTMode(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "User rejected"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    const-string p2, "4"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$mposFailed(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Ljava/lang/String;)V

    .line 141
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$fgetmUserConfirmReceiver(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
