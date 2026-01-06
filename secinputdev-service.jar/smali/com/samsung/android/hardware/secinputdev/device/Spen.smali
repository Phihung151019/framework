.class public Lcom/samsung/android/hardware/secinputdev/device/Spen;
.super Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
.source "Spen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;,
        Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;
    }
.end annotation


# static fields
.field private static final SET_CLEAR_COVER_MODE:Ljava/lang/String; = "clear_cover_mode"

.field private static final SET_FOLD_STATE:Ljava/lang/String; = "set_fold_state"

.field private static final SET_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"

.field private static final SET_SPEN_AOD_ENABLE:Ljava/lang/String; = "set_epen_aod_enable"

.field private static final SET_SPEN_BLE_CHARGING_MODE:Ljava/lang/String; = "epen_ble_charging_mode"

.field private static final SET_SPEN_COVER_TYPE:Ljava/lang/String; = "set_cover_type"

.field private static final SET_SPEN_LOWCURRENT_MODE:Ljava/lang/String; = "set_lowcurrent_mode"

.field private static final SET_SPEN_PDCT_LOWSENSITIVITY_ENABLE:Ljava/lang/String; = "set_pdct_lowsensitivity_enable"

.field private static final SET_SPEN_POWER_MODE:Ljava/lang/String; = "sec_wacom_device_enable"

.field private static final SET_SPEN_SAVING_MODE:Ljava/lang/String; = "set_saving_mode"

.field private static final SET_SPEN_SCREEN_OFF_MEMO:Ljava/lang/String; = "set_screen_off_memo"

.field private static final SET_SPEN_WIRELESS_CHARGING_MODE:Ljava/lang/String; = "set_wcharging_mode"

.field private static final SET_SPEN_WIRELESS_CHARGING_TX_ID:Ljava/lang/String; = "set_wcharging_tx_id"


# instance fields
.field private final stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

.field private final supportCommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "devid"    # I
    .param p3, "feature"    # I
    .param p4, "cmdlist"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->supportCommands:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/device/Spen;->setCommands()V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportCommands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->supportCommands:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method private setCommands()V
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->supportCommands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->values()[Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 94
    .local v4, "command":Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->cmdlistSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->getProperty()Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 95
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->supportCommands:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v4    # "command":Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "length":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->supportCommands:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 102
    .local v2, "command":Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 105
    const/16 v3, 0x64

    if-le v0, v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    const-string v4, "\n     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/4 v0, 0x0

    .line 109
    .end local v2    # "command":Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
    :cond_3
    goto :goto_1

    .line 110
    :cond_4
    return-void
.end method


# virtual methods
.method public getSupportCommands()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportCommands: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)I
    .locals 5
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 114
    const/4 v0, -0x5

    .line 115
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->supportCommands:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 116
    .local v1, "spenCommand":Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
    const-string v2, "setProperty: not support cmd \""

    if-nez v1, :cond_0

    .line 117
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" at supportCommands"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v0

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->cmdlistSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p3}, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/Spen;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v2, p3}, Lcom/samsung/android/hardware/secinputdev/device/Spen;->runOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->getProperty()Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 124
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->getProperty()Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    move-result-object v3

    invoke-direct {v2, p0, v3, p2, p3}, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/Spen;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v2, p3}, Lcom/samsung/android/hardware/secinputdev/device/Spen;->runOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return v0
.end method

.method protected supportActivate()Z
    .locals 1

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method protected supportGetProperty()Z
    .locals 1

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method protected supportRunCommand()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method protected supportSetProperty()Z
    .locals 1

    .line 168
    const/4 v0, 0x1

    return v0
.end method
