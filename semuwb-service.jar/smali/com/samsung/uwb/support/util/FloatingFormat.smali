.class public final enum Lcom/samsung/uwb/support/util/FloatingFormat;
.super Ljava/lang/Enum;
.source "FloatingFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/util/FloatingFormat$Signed;,
        Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/uwb/support/util/FloatingFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat;

.field public static final enum SIGNED_Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat;

.field public static final enum SIGNED_Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat;

.field public static final enum SIGNED_Q_9_7:Lcom/samsung/uwb/support/util/FloatingFormat;

.field private static final TAG:Ljava/lang/String; = "FloatingFormat"

.field public static final enum UNSIGNED_Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat;

.field public static final enum UNSIGNED_Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat;


# instance fields
.field mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

.field mSigned:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;


# direct methods
.method private static synthetic $values()[Lcom/samsung/uwb/support/util/FloatingFormat;
    .locals 5

    .line 3
    sget-object v0, Lcom/samsung/uwb/support/util/FloatingFormat;->SIGNED_Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v1, Lcom/samsung/uwb/support/util/FloatingFormat;->UNSIGNED_Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v2, Lcom/samsung/uwb/support/util/FloatingFormat;->SIGNED_Q_9_7:Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v3, Lcom/samsung/uwb/support/util/FloatingFormat;->SIGNED_Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v4, Lcom/samsung/uwb/support/util/FloatingFormat;->UNSIGNED_Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/uwb/support/util/FloatingFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v1, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->SIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    sget-object v2, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    const-string v3, "SIGNED_Q_8_8"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat;-><init>(Ljava/lang/String;ILcom/samsung/uwb/support/util/FloatingFormat$Signed;Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat;->SIGNED_Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat;

    .line 5
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v1, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->UNSIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    sget-object v2, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    const-string v3, "UNSIGNED_Q_8_8"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat;-><init>(Ljava/lang/String;ILcom/samsung/uwb/support/util/FloatingFormat$Signed;Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat;->UNSIGNED_Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat;

    .line 6
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v1, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->SIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    sget-object v2, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_9_7:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    const-string v3, "SIGNED_Q_9_7"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat;-><init>(Ljava/lang/String;ILcom/samsung/uwb/support/util/FloatingFormat$Signed;Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat;->SIGNED_Q_9_7:Lcom/samsung/uwb/support/util/FloatingFormat;

    .line 7
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v1, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->SIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    sget-object v2, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    const-string v3, "SIGNED_Q_10_6"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat;-><init>(Ljava/lang/String;ILcom/samsung/uwb/support/util/FloatingFormat$Signed;Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat;->SIGNED_Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat;

    .line 8
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat;

    sget-object v1, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->UNSIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    sget-object v2, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    const-string v3, "UNSIGNED_Q_10_6"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat;-><init>(Ljava/lang/String;ILcom/samsung/uwb/support/util/FloatingFormat$Signed;Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat;->UNSIGNED_Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat;

    .line 3
    invoke-static {}, Lcom/samsung/uwb/support/util/FloatingFormat;->$values()[Lcom/samsung/uwb/support/util/FloatingFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat;->$VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/uwb/support/util/FloatingFormat$Signed;Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;)V
    .locals 0
    .param p3, "signedFlag"    # Lcom/samsung/uwb/support/util/FloatingFormat$Signed;
    .param p4, "qFormat"    # Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/uwb/support/util/FloatingFormat$Signed;",
            "Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mSigned:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    .line 14
    iput-object p4, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    .line 15
    return-void
.end method

.method private twos_compliment(II)I
    .locals 2
    .param p1, "nInput"    # I
    .param p2, "nBits"    # I

    .line 45
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 46
    shl-int v0, v1, p2

    sub-int/2addr p1, v0

    .line 48
    :cond_0
    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/uwb/support/util/FloatingFormat;
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

    .line 3
    const-class v0, Lcom/samsung/uwb/support/util/FloatingFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/util/FloatingFormat;

    return-object v0
.end method

.method public static values()[Lcom/samsung/uwb/support/util/FloatingFormat;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/uwb/support/util/FloatingFormat;->$VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat;

    invoke-virtual {v0}, [Lcom/samsung/uwb/support/util/FloatingFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/uwb/support/util/FloatingFormat;

    return-object v0
.end method


# virtual methods
.method public getFractionalBit()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    iget v0, v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfInt:I

    return v0
.end method

.method public getIntegerBit()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    iget v0, v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfInt:I

    return v0
.end method

.method public isSigned()Lcom/samsung/uwb/support/util/FloatingFormat$Signed;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mSigned:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    return-object v0
.end method

.method public toFloat(I)F
    .locals 8
    .param p1, "value"    # I

    .line 33
    move v0, p1

    .line 34
    .local v0, "xxx":I
    iget-object v1, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mSigned:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    sget-object v2, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->SIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    if-ne v1, v2, :cond_0

    .line 35
    iget-object v1, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    iget v1, v1, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfInt:I

    iget-object v2, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    iget v2, v2, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfFrac:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/uwb/support/util/FloatingFormat;->twos_compliment(II)I

    move-result v0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    iget v1, v1, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfFrac:I

    shr-int v1, v0, v1

    .line 39
    .local v1, "intPart":I
    iget-object v2, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    iget v2, v2, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfFrac:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    and-int/2addr v2, v0

    int-to-double v2, v2

    .line 40
    .local v2, "fracPart":D
    iget-object v4, p0, Lcom/samsung/uwb/support/util/FloatingFormat;->mQFormat:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    iget v4, v4, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfFrac:I

    neg-int v4, v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    .line 41
    .end local v2    # "fracPart":D
    .local v4, "fracPart":D
    int-to-float v2, v1

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method
