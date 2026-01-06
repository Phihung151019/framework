.class Lcom/android/internal/telephony/SemBigDataInfoController$1;
.super Landroid/content/BroadcastReceiver;
.source "SemBigDataInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemBigDataInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemBigDataInfoController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemBigDataInfoController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemBigDataInfoController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    const-string p1, "simslot"

    .line 157
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v3, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {v3}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemBigDataInfoController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-ne p1, v3, :cond_a

    .line 158
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string v3, "feature"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 159
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string v2, "bigdata_info"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$mToString(Lcom/android/internal/telephony/SemBigDataInfoController;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BIG_DATA insertLog slot: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemBigDataInfoController;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", feature: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "Modem"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_6

    const/16 p2, 0x16

    const/4 v2, 0x6

    if-eq p1, p2, :cond_5

    const/16 p2, 0x18

    if-eq p1, p2, :cond_4

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1b

    const/4 v3, 0x2

    if-eq p1, p2, :cond_2

    const/16 p2, 0x1000

    const-string v4, "Telephony"

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1001

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 217
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 218
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v4}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_0

    .line 185
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_0

    .line 179
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_0

    .line 175
    :pswitch_5
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 211
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "Network Timezone"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 207
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v4}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$minsertLogToBatteryStatsService(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    return-void

    .line 194
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_0

    .line 191
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_0

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$mpreLogDROP(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$mpreLogCEND(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$misSemHqmEnable(Lcom/android/internal/telephony/SemBigDataInfoController;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 226
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 229
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    .line 230
    const-string p0, "BIG_DATA Feature is undefined. Don\'t send Big Data"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result v7

    const-string v3, "com.android.internal.telephony"

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$minsertLog(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 234
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 235
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 236
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string v0, "voltage"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryVoltage(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 238
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result p1

    if-ne p1, v1, :cond_b

    const-string p1, "hv_charger"

    .line 239
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 240
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_1

    .line 241
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    const-string p1, "online"

    .line 242
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_c

    .line 244
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 247
    :cond_c
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p1, "status"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryStatus(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    return-void

    .line 248
    :cond_d
    const-string p1, "sec.intent.action.networkdiagnostic.UT_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 249
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p1, "ut-mode"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputbUtMode(Lcom/android/internal/telephony/SemBigDataInfoController;Z)V

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2000
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
