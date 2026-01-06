.class final enum Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
.super Ljava/lang/Enum;
.source "Spen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/device/Spen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum AOD:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum REFRESH_RATE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum SPEN_BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum SPEN_COVER_TYPE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum SPEN_LOWCURRENT:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum SPEN_PDCT_LOWSENSITIVITY:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum SPEN_POWER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum SPEN_SAVING_MODE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum SPEN_SCREEN_OFF_MEMO:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum SPEN_SET_WIRELESS_CHARGER_TX_ID:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

.field public static final enum WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;


# instance fields
.field private name:Ljava/lang/String;

.field property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
    .locals 13

    .line 45
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->REFRESH_RATE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->AOD:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_COVER_TYPE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_SAVING_MODE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_POWER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v8, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v9, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_SCREEN_OFF_MEMO:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v10, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_PDCT_LOWSENSITIVITY:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v11, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_LOWCURRENT:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v12, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_SET_WIRELESS_CHARGER_TX_ID:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    filled-new-array/range {v0 .. v12}, [Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 46
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->REFRESH_RATE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v3

    const-string v4, "refresh_rate_mode"

    const/4 v5, 0x0

    const-string v1, "REFRESH_RATE"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->REFRESH_RATE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 47
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v4

    const-string v5, "clear_cover_mode"

    const/4 v6, 0x0

    const-string v2, "CLEAR_COVER"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 48
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->AOD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v5

    const-string v6, "set_epen_aod_enable"

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->AOD_ENABLE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v3, "AOD"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v2, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->AOD:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 49
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v6

    const-string v7, "set_fold_state"

    const/4 v8, 0x0

    const-string v4, "FOLD_STATE"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v3, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 50
    new-instance v4, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v7

    const-string v8, "set_wcharging_mode"

    sget-object v9, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_WCHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v5, "WIRELESS_CHARGER"

    const/4 v6, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v4, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 51
    new-instance v5, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_COVER_TYPE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v8

    const-string v9, "set_cover_type"

    const/4 v10, 0x0

    const-string v6, "SPEN_COVER_TYPE"

    const/4 v7, 0x5

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v5, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_COVER_TYPE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 52
    new-instance v6, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_SAVING_MODE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v9

    const-string v10, "set_saving_mode"

    sget-object v11, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_SAVING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v7, "SPEN_SAVING_MODE"

    const/4 v8, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v6, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_SAVING_MODE:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 53
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_POWER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v3

    const-string v4, "sec_wacom_device_enable"

    const/4 v5, 0x0

    const-string v1, "SPEN_POWER"

    const/4 v2, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_POWER:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 54
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v4

    const-string v5, "epen_ble_charging_mode"

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v2, "SPEN_BLE_CHARGING"

    const/16 v3, 0x8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 55
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_SCREEN_OFF_MEMO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v5

    const-string v6, "set_screen_off_memo"

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_MEMO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v3, "SPEN_SCREEN_OFF_MEMO"

    const/16 v4, 0x9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v2, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_SCREEN_OFF_MEMO:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 56
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_PDCT_LOWSENSITIVITY:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v6

    const-string v7, "set_pdct_lowsensitivity_enable"

    const/4 v8, 0x0

    const-string v4, "SPEN_PDCT_LOWSENSITIVITY"

    const/16 v5, 0xa

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v3, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_PDCT_LOWSENSITIVITY:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 57
    new-instance v4, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_LOWCURRENT:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v7

    const-string v8, "set_lowcurrent_mode"

    const/4 v9, 0x0

    const-string v5, "SPEN_LOWCURRENT"

    const/16 v6, 0xb

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v4, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_LOWCURRENT:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 58
    new-instance v5, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_SET_WIRELESS_CHARGER_TX_ID:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->toInt()I

    move-result v8

    const-string v9, "set_wcharging_tx_id"

    const/4 v10, 0x0

    const-string v6, "SPEN_SET_WIRELESS_CHARGER_TX_ID"

    const/16 v7, 0xc

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V

    sput-object v5, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->SPEN_SET_WIRELESS_CHARGER_TX_ID:Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    .line 45
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->$values()[Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->value:I

    .line 66
    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->name:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    const-class v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;
    .locals 1

    .line 45
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->value:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$Command;->name:Ljava/lang/String;

    return-object v0
.end method
