.class Lcom/android/internal/telephony/SmsHQMAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsHQMAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHQMAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsHQMAgent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsHQMAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMS BigData] Received SMS bigdata intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsHQMAgent"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.intent.action.SMS_BIG_DATA_INFO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 51
    const-string v1, "feature"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v3, "slot"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 53
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-static {v3, v10}, Lcom/android/internal/telephony/SmsHQMAgent;->-$$Nest$misNTN(Lcom/android/internal/telephony/SmsHQMAgent;I)Z

    move-result v11

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v0, v3

    goto :goto_1

    :sswitch_0
    const-string v0, "socs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "socf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "smtc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "smot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "sdac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, p1

    goto :goto_1

    :sswitch_5
    const-string v4, "scfe"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "There is no feature : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p2, "SOCS"

    invoke-virtual {p1, p2, v10}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    if-eqz v11, :cond_8

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p1, "SSCS"

    invoke-virtual {p0, p1, v10}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    return-void

    .line 90
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p2, "SOCF"

    invoke-virtual {p1, p2, v10}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    if-eqz v11, :cond_8

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p1, "SSCF"

    invoke-virtual {p0, p1, v10}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    return-void

    .line 96
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p2, "SMTC"

    invoke-virtual {p1, p2, v10}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    if-eqz v11, :cond_8

    .line 98
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p1, "SSTC"

    invoke-virtual {p0, p1, v10}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    return-void

    .line 56
    :pswitch_3
    const-string p1, "momt"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    const-string v0, "iter"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-static {p0, p1, p2, v10, v11}, Lcom/android/internal/telephony/SmsHQMAgent;->-$$Nest$msendSMOTInfoToHQM(Lcom/android/internal/telephony/SmsHQMAgent;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 61
    :pswitch_4
    const-string p1, "nsda"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    const-string v0, "osda"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "dmac"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/SemDMACdata;

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSDACInfoToHQM(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SemDMACdata;)V

    return-void

    .line 68
    :pswitch_5
    const-string v0, "nwfl"

    const/16 v1, -0x3e7

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 69
    const-string v0, "rile"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 70
    const-string v0, "sgec"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-nez v5, :cond_6

    .line 72
    const-string p1, "rpca"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 73
    const-string p1, "tpca"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 74
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSCFEInfoToHQM(IIIIIIZ)V

    return-void

    :cond_6
    if-ne v5, p1, :cond_7

    .line 76
    const-string p1, "tlca"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 77
    const-string p1, "errc"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 78
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSCFEInfoToHQM(IIIIIIZ)V

    return-void

    .line 80
    :cond_7
    const-string p0, "There is no network flag value in scfe intent"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        0x35c70f -> :sswitch_5
        0x35ca33 -> :sswitch_4
        0x35edbf -> :sswitch_3
        0x35ee49 -> :sswitch_2
        0x35f3bf -> :sswitch_1
        0x35f3cc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
