.class public final enum Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;
.super Ljava/lang/Enum;
.source "SysinputHALInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

.field public static final enum KEY:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

.field public static final enum KEYBOARD:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

.field public static final enum SPEN:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

.field public static final enum TAAS:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

.field public static final enum TSP:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

.field public static final enum TSP_SUB:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;
    .locals 6

    .line 15
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->TSP:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->TSP_SUB:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->KEY:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->KEYBOARD:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->TAAS:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    const-string v1, "TSP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->TSP:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    .line 17
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    const-string v1, "TSP_SUB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->TSP_SUB:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    .line 18
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    const-string v1, "KEY"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->KEY:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    .line 19
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    const/4 v1, 0x3

    const/16 v2, 0xb

    const-string v3, "SPEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    .line 20
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    const/4 v1, 0x4

    const/16 v2, 0x1f

    const-string v3, "KEYBOARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->KEYBOARD:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    .line 21
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    const/4 v1, 0x5

    const/16 v2, 0x29

    const-string v3, "TAAS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->TAAS:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    .line 15
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->$values()[Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->value:I

    .line 27
    return-void
.end method

.method public static getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;
    .locals 5
    .param p0, "devid"    # I

    .line 34
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->values()[Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    .local v3, "device":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;
    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->value:I

    if-ne v4, p0, :cond_0

    .line 36
    return-object v3

    .line 34
    .end local v3    # "device":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;
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

    .line 15
    const-class v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInt()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
