.class final enum Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
.super Ljava/lang/Enum;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InterruptMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field public static final enum LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field public static final enum NORMAL:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field public static final enum START:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field public static final enum STOP:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field public static final enum UNKNOWN:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .locals 5

    .line 619
    sget-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v1, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v2, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v3, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v4, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 620
    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    const-string v1, "LOGGING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    const-string v1, "START"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    const-string v1, "STOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 619
    invoke-static {}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->$values()[Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->$VALUES:[Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

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

    .line 619
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
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

    .line 619
    const-class v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .locals 1

    .line 619
    sget-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->$VALUES:[Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    return-object v0
.end method
