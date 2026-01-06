.class Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;
.super Landroid/telephony/PhoneStateListener;
.source "DataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveDataSubIdListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataSettingsManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1259
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 1260
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onActiveDataSubscriptionIdChanged(I)V
    .locals 4

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/data/DataSettingsManager;)Z

    move-result v0

    .line 1267
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fputmIsDataEnabled(Lcom/android/internal/telephony/data/DataSettingsManager;Z)V

    .line 1268
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsDataEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/data/DataSettingsManager;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", prevDataEnabled="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", subId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V

    return-void
.end method
