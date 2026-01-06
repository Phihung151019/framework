.class Lcom/android/internal/telephony/data/PhoneSwitcher$11;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;->onMultiSimConfigChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V
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

    .line 1172
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$11;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .locals 0

    .line 1177
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$11;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$monDataEnabledChanged(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    return-void
.end method

.method public blacklist onDataRoamingEnabledChanged(Z)V
    .locals 0

    .line 1182
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$11;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isSetMobileDataSettingAllowedForDCM()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1183
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$11;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setMobileDataSetting()V

    .line 1186
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$11;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    return-void
.end method
