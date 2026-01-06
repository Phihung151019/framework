.class public final Landroidx/car/app/model/constraints/CarColorConstraints;
.super Ljava/lang/Object;
.source "CarColorConstraints.java"


# static fields
.field public static final STANDARD_ONLY:Landroidx/car/app/model/constraints/CarColorConstraints;

.field public static final UNCONSTRAINED:Landroidx/car/app/model/constraints/CarColorConstraints;


# instance fields
.field private final mAllowedTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 37
    invoke-static {v0}, Landroidx/car/app/model/constraints/CarColorConstraints;->create([I)Landroidx/car/app/model/constraints/CarColorConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarColorConstraints;

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 51
    invoke-static {v0}, Landroidx/car/app/model/constraints/CarColorConstraints;->create([I)Landroidx/car/app/model/constraints/CarColorConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->STANDARD_ONLY:Landroidx/car/app/model/constraints/CarColorConstraints;

    .line 50
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private constructor <init>([I)V
    .locals 5
    .param p1, "allowedColorTypes"    # [I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/constraints/CarColorConstraints;->mAllowedTypes:Ljava/util/HashSet;

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 84
    .local v2, "type":I
    iget-object v3, p0, Landroidx/car/app/model/constraints/CarColorConstraints;->mAllowedTypes:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method private static create([I)Landroidx/car/app/model/constraints/CarColorConstraints;
    .locals 1
    .param p0, "allowedColorTypes"    # [I

    .line 66
    new-instance v0, Landroidx/car/app/model/constraints/CarColorConstraints;

    invoke-direct {v0, p0}, Landroidx/car/app/model/constraints/CarColorConstraints;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public validateOrThrow(Landroidx/car/app/model/CarColor;)V
    .locals 4
    .param p1, "carColor"    # Landroidx/car/app/model/CarColor;

    .line 75
    invoke-virtual {p1}, Landroidx/car/app/model/CarColor;->getType()I

    move-result v0

    .line 76
    .local v0, "type":I
    iget-object v1, p0, Landroidx/car/app/model/constraints/CarColorConstraints;->mAllowedTypes:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    return-void

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Car color type is not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
