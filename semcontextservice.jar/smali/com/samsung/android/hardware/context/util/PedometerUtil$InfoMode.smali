.class public final enum Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;
.super Ljava/lang/Enum;
.source "PedometerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/util/PedometerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

.field public static final enum CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

.field public static final enum DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

.field public static final enum SUM:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;
    .locals 3

    .line 240
    sget-object v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->SUM:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    sget-object v2, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 241
    new-instance v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    const-string v1, "DIFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    new-instance v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    const-string v1, "SUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->SUM:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    new-instance v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    const-string v1, "CUMULATIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    .line 240
    invoke-static {}, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->$values()[Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->$VALUES:[Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

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

    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;
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

    .line 240
    const-class v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;
    .locals 1

    .line 240
    sget-object v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->$VALUES:[Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    return-object v0
.end method
