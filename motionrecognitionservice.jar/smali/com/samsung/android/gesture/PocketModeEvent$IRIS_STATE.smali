.class public final enum Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
.super Ljava/lang/Enum;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IRIS_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

.field public static final enum NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

.field public static final enum TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

.field public static final enum TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
    .locals 3

    .line 260
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 261
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    const-string v1, "NOT_USE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    const-string v1, "TURN_ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    const-string v1, "TURN_OFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    .line 260
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->$values()[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->$VALUES:[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
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

    .line 260
    const-class v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
    .locals 1

    .line 260
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->$VALUES:[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-object v0
.end method
