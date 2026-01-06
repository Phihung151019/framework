.class public Lcom/samsung/android/hardware/secinputdev/device/Touch;
.super Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/device/Touch$Command;,
        Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;,
        Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;
    }
.end annotation


# static fields
.field private static final SET_ALWAYS_LOW_POWER_MODE:Ljava/lang/String; = "set_always_lpm"

.field private static final SET_AOD_ENABLE:Ljava/lang/String; = "aod_enable"

.field private static final SET_AOD_NOTI_RECT:Ljava/lang/String; = "set_aod_noti_rect"

.field private static final SET_AOD_RECT:Ljava/lang/String; = "set_aod_rect"

.field private static final SET_AWD_MODE:Ljava/lang/String; = "awd_mode"

.field private static final SET_BEZEL_ENABLE:Ljava/lang/String; = "bezel_enable"

.field private static final SET_BODY_DETECTION:Ljava/lang/String; = "set_body_detection"

.field private static final SET_BRUSH_ENABLE:Ljava/lang/String; = "brush_enable"

.field private static final SET_CHARGER_MODE:Ljava/lang/String; = "charger_mode"

.field private static final SET_CLEAR_COVER_MODE:Ljava/lang/String; = "clear_cover_mode"

.field private static final SET_DOUBLE_TAP_TO_WAKE_UP:Ljava/lang/String; = "aot_enable"

.field private static final SET_EAR_DETECT_ENABLE:Ljava/lang/String; = "ear_detect_enable"

.field private static final SET_EXTERNAL_NOISE_MODE:Ljava/lang/String; = "external_noise_mode"

.field private static final SET_FAST_RESPONSE:Ljava/lang/String; = "set_fast_response"

.field private static final SET_FOD_ENABLE:Ljava/lang/String; = "fod_enable"

.field private static final SET_FOD_ICON_VISIBLE:Ljava/lang/String; = "fod_icon_visible"

.field private static final SET_FOD_LP_MODE:Ljava/lang/String; = "fod_lp_mode"

.field private static final SET_FOD_RECT:Ljava/lang/String; = "set_fod_rect"

.field private static final SET_FOLD_STATE:Ljava/lang/String; = "set_fold_state"

.field private static final SET_FP_INT_CONTROL:Ljava/lang/String; = "fp_int_control"

.field private static final SET_GAME_MODE:Ljava/lang/String; = "set_game_mode"

.field private static final SET_GLOVE_MODE:Ljava/lang/String; = "glove_mode"

.field private static final SET_GRIP_DATA:Ljava/lang/String; = "set_grip_data"

.field private static final SET_LCD_ORIENTATION:Ljava/lang/String; = "lcd_orientation"

.field private static final SET_LOW_SENSITIVITY_MODE_ENABLE:Ljava/lang/String; = "low_sensitivity_mode_enable"

.field private static final SET_NFC_MODE:Ljava/lang/String; = "nfc_rf_field_mode"

.field private static final SET_NOTE_MODE:Ljava/lang/String; = "set_note_mode"

.field private static final SET_POCKET_MODE_ENABLE:Ljava/lang/String; = "pocket_mode_enable"

.field private static final SET_PROX_LP_SCAN_MODE:Ljava/lang/String; = "prox_lp_scan_mode"

.field private static final SET_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"

.field private static final SET_SCAN_RATE:Ljava/lang/String; = "set_scan_rate"

.field private static final SET_SINGLETAP_ENABLE:Ljava/lang/String; = "singletap_enable"

.field private static final SET_SIP_MODE:Ljava/lang/String; = "set_sip_mode"

.field private static final SET_SPAY_ENABLE:Ljava/lang/String; = "spay_enable"

.field private static final SET_STYLUS_ENABLE:Ljava/lang/String; = "stylus_enable"

.field private static final SET_SYNC_CHANGED:Ljava/lang/String; = "sync_changed"

.field private static final SET_TEMPERATURE:Ljava/lang/String; = "set_temperature"

.field private static final SET_TOUCHABLE_AREA:Ljava/lang/String; = "set_touchable_area"

.field private static final SET_TWO_FINGER_DOUBLETAP_MODE:Ljava/lang/String; = "two_finger_doubletap_enable"

.field private static final SET_WIRELESS_CHARGER_MODE:Ljava/lang/String; = "set_wirelesscharger_mode"


# instance fields
.field private final stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

.field private final supportCommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
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

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->supportCommands:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    .line 70
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->USE_CMDTHREAD:Z

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->pendingQueue:Ljava/util/List;

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->setCommands()V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportCommands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->supportCommands:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method private setCommands()V
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->supportCommands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/device/Touch$Command;->values()[Lcom/samsung/android/hardware/secinputdev/device/Touch$Command;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 145
    .local v4, "command":Lcom/samsung/android/hardware/secinputdev/device/Touch$Command;
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->cmdlistSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/device/Touch$Command;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->supportCommands:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/device/Touch$Command;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/device/Touch$Command;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v4    # "command":Lcom/samsung/android/hardware/secinputdev/device/Touch$Command;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "length":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->supportCommands:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 156
    const/16 v3, 0x64

    if-le v0, v3, :cond_2

    .line 157
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    const-string v4, "\n     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/4 v0, 0x0

    .line 160
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 161
    :cond_3
    return-void
.end method


# virtual methods
.method public getSupportCommands()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportCommands: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->stringBuilderForSupportCommands:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)I
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 165
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->supportCommands:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, "commandName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty: not support cmd \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" at supportCommands"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, -0x5

    return v1

    .line 171
    :cond_0
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/Touch;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->runOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 172
    const/4 v1, 0x1

    return v1
.end method

.method public streamRawdata(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 221
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    .line 222
    .local v0, "result":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/Touch;ILcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->runOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 223
    const/4 v1, 0x1

    return v1
.end method

.method protected supportActivate()Z
    .locals 1

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method protected supportGetProperty()Z
    .locals 1

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method protected supportRunCommand()Z
    .locals 1

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected supportSetProperty()Z
    .locals 1

    .line 202
    const/4 v0, 0x1

    return v0
.end method
