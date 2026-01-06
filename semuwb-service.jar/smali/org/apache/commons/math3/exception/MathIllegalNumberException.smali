.class public Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "MathIllegalNumberException.java"


# static fields
.field protected static final INTEGER_ZERO:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x67595d29f3bbad06L


# instance fields
.field private final argument:Ljava/lang/Number;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/exception/MathIllegalNumberException;->INTEGER_ZERO:Ljava/lang/Integer;

    return-void
.end method

.method protected varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "wrong"    # Ljava/lang/Number;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 50
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 51
    iput-object p2, p0, Lorg/apache/commons/math3/exception/MathIllegalNumberException;->argument:Ljava/lang/Number;

    .line 52
    return-void
.end method


# virtual methods
.method public getArgument()Ljava/lang/Number;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathIllegalNumberException;->argument:Ljava/lang/Number;

    return-object v0
.end method
