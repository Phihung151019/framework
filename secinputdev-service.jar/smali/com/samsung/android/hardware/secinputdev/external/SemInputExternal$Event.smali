.class public final enum Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
.super Ljava/lang/Enum;
.source "SemInputExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_BATTERY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_BATTERY_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_COVER:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_GAME:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_LAZY_BOOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_RF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_RF_OFF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum BROADCAST_USER_SWITCHED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum LISTENER_DEX:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum LISTENER_DISPLAY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum LISTENER_DISPLAY_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum LISTENER_FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum LISTENER_PROX_LP_SCAN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum LISTENER_SENSOR_WATCH:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum OBSERVER_UEVENT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum SETTING_AOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum SETTING_SPEN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

.field public static final enum SETTING_TSP_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;


# instance fields
.field private event:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .locals 20

    .line 5
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->OBSERVER_UEVENT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DEX:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_PROX_LP_SCAN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_SENSOR_WATCH:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v8, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_AOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v9, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_SPEN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v10, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_TSP_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v11, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v12, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v13, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_LAZY_BOOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v14, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_GAME:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v15, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_COVER:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v16, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_USER_SWITCHED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v17, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v18, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_OFF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    sget-object v19, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    filled-new-array/range {v1 .. v19}, [Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 6
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "OBSERVER_UEVENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->OBSERVER_UEVENT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 8
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "LISTENER_DISPLAY_STATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 9
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "LISTENER_DISPLAY"

    const/4 v3, 0x2

    const/16 v4, 0xc

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 10
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "LISTENER_FOLD_STATE"

    const/4 v3, 0x3

    const/16 v5, 0xd

    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 11
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "LISTENER_DEX"

    const/4 v3, 0x4

    const/16 v6, 0xe

    invoke-direct {v0, v1, v3, v6}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DEX:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 12
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "LISTENER_PROX_LP_SCAN"

    const/4 v3, 0x5

    const/16 v7, 0xf

    invoke-direct {v0, v1, v3, v7}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_PROX_LP_SCAN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 13
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "LISTENER_SENSOR_WATCH"

    const/4 v3, 0x6

    const/16 v8, 0x10

    invoke-direct {v0, v1, v3, v8}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_SENSOR_WATCH:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 15
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const/4 v1, 0x7

    const/16 v3, 0x15

    const-string v9, "SETTING_AOT"

    invoke-direct {v0, v9, v1, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_AOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 16
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const/16 v1, 0x8

    const/16 v3, 0x16

    const-string v9, "SETTING_SPEN"

    invoke-direct {v0, v9, v1, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_SPEN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 17
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const/16 v1, 0x9

    const/16 v3, 0x17

    const-string v9, "SETTING_TSP_EXTRA"

    invoke-direct {v0, v9, v1, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_TSP_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 19
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const/16 v1, 0xa

    const/16 v3, 0x1f

    const-string v9, "BROADCAST_BATTERY"

    invoke-direct {v0, v9, v1, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 20
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "BROADCAST_SHUTDOWN"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 21
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "BROADCAST_LAZY_BOOT"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_LAZY_BOOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 22
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "BROADCAST_GAME"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_GAME:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 23
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "BROADCAST_COVER"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_COVER:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 24
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "BROADCAST_USER_SWITCHED"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_USER_SWITCHED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 25
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "BROADCAST_RF_DETECTED"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 26
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const/16 v1, 0x11

    const/16 v2, 0x26

    const-string v3, "BROADCAST_RF_OFF_DETECTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_OFF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 27
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const/16 v1, 0x12

    const/16 v2, 0x27

    const-string v3, "BROADCAST_BATTERY_EXTRA"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 5
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->$values()[Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "event"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->event:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
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

    .line 5
    const-class v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    return-object v0
.end method
