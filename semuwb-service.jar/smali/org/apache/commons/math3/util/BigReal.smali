.class public Lorg/apache/commons/math3/util/BigReal;
.super Ljava/lang/Object;
.source "BigReal.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/util/BigReal;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/util/BigReal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ONE:Lorg/apache/commons/math3/util/BigReal;

.field public static final ZERO:Lorg/apache/commons/math3/util/BigReal;

.field private static final serialVersionUID:J = 0x452ca010a807f22eL


# instance fields
.field private final d:Ljava/math/BigDecimal;

.field private roundingMode:Ljava/math/RoundingMode;

.field private scale:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/apache/commons/math3/util/BigReal;->ZERO:Lorg/apache/commons/math3/util/BigReal;

    .line 45
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/apache/commons/math3/util/BigReal;->ONE:Lorg/apache/commons/math3/util/BigReal;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "val"    # D

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 136
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 137
    return-void
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .locals 1
    .param p1, "val"    # D
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 144
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 145
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "val"    # I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 151
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 152
    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .locals 1
    .param p1, "val"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 159
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 160
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "val"    # J

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 166
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 167
    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .locals 1
    .param p1, "val"    # J
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 174
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(JLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 181
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 189
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 63
    iput-object p1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 70
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 1
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 78
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .locals 1
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 87
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .locals 1
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 95
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 96
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "in"    # [C

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 102
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>([C)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 103
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 111
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 112
    return-void
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .locals 1
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "mc"    # Ljava/math/MathContext;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 121
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 122
    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .locals 1
    .param p1, "in"    # [C
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 129
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>([CLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    .line 130
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->add(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 3
    .param p1, "a"    # Lorg/apache/commons/math3/util/BigReal;

    .line 232
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->compareTo(Lorg/apache/commons/math3/util/BigReal;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/util/BigReal;)I
    .locals 2
    .param p1, "a"    # Lorg/apache/commons/math3/util/BigReal;

    .line 285
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object v1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->divide(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 5
    .param p1, "a"    # Lorg/apache/commons/math3/util/BigReal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 252
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget v3, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    iget-object v4, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/ArithmeticException;
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public doubleValue()D
    .locals 2

    .line 292
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 305
    if-ne p0, p1, :cond_0

    .line 306
    const/4 v0, 0x1

    return v0

    .line 309
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/math3/util/BigReal;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, v1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 312
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "Lorg/apache/commons/math3/util/BigReal;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-static {}, Lorg/apache/commons/math3/util/BigRealField;->getInstance()Lorg/apache/commons/math3/util/BigRealField;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 218
    iget v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->multiply(I)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->multiply(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/util/BigReal;
    .locals 3
    .param p1, "n"    # I

    .line 280
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 3
    .param p1, "a"    # Lorg/apache/commons/math3/util/BigReal;

    .line 275
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigReal;->negate()Lorg/apache/commons/math3/util/BigReal;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/util/BigReal;
    .locals 2

    .line 242
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigReal;->reciprocal()Lorg/apache/commons/math3/util/BigReal;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/util/BigReal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 266
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget v3, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    iget-object v4, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/ArithmeticException;
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 0
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .line 208
    iput-object p1, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    .line 209
    return-void
.end method

.method public setScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .line 227
    iput p1, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 228
    return-void
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->subtract(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 3
    .param p1, "a"    # Lorg/apache/commons/math3/util/BigReal;

    .line 237
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method
