.class Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierPrivilegesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierPrivilegesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 p1, 0x4

    const/4 v0, 0x3

    .line 289
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v8, 0x6

    .line 292
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    move v9, v3

    goto :goto_1

    :sswitch_0
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    move v9, v6

    goto :goto_1

    :sswitch_1
    const-string v9, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move v9, p1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    move v9, v0

    goto :goto_1

    :sswitch_3
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_4
    const-string v9, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    move v9, v5

    goto :goto_1

    :sswitch_5
    const-string v9, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    move v9, v4

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_5

    .line 316
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 317
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 318
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 319
    invoke-static {}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to get package from Intent"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_8
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 327
    :try_start_0
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    .line 328
    invoke-static {v1, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$mgetApplicationEnabledSetting(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_9

    goto :goto_3

    :cond_9
    move v5, v4

    :goto_3
    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_4

    .line 332
    :catch_0
    invoke-static {}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-nez p2, :cond_a

    if-nez v4, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    move v6, v8

    .line 341
    :cond_b
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;

    move-result-object p0

    .line 342
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 341
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 295
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 296
    const-string v0, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 297
    const-string v1, "phone"

    .line 298
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq v0, v5, :cond_c

    if-eq v0, v8, :cond_c

    if-eq v0, v6, :cond_c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    :goto_5
    return-void

    .line 307
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;

    move-result-object p0

    .line 308
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 307
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x44ff4dd4 -> :sswitch_5
        -0x304ed112 -> :sswitch_4
        0xa480416 -> :sswitch_3
        0x1f50b9c2 -> :sswitch_2
        0x272c3142 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
