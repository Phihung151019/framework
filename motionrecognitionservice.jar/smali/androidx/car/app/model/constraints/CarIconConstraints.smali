.class public final Landroidx/car/app/model/constraints/CarIconConstraints;
.super Ljava/lang/Object;
.source "CarIconConstraints.java"


# static fields
.field public static final DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

.field public static final UNCONSTRAINED:Landroidx/car/app/model/constraints/CarIconConstraints;


# instance fields
.field private final mAllowedTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroidx/car/app/model/constraints/CarIconConstraints;->create([I)Landroidx/car/app/model/constraints/CarIconConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarIconConstraints;

    .line 45
    filled-new-array {v1, v2}, [I

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroidx/car/app/model/constraints/CarIconConstraints;->create([I)Landroidx/car/app/model/constraints/CarIconConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    .line 45
    return-void
.end method

.method private constructor <init>([I)V
    .locals 0
    .param p1, "allowedCustomIconTypes"    # [I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroidx/car/app/model/constraints/CarIconConstraints;->mAllowedTypes:[I

    .line 97
    return-void
.end method

.method private static create([I)Landroidx/car/app/model/constraints/CarIconConstraints;
    .locals 1
    .param p0, "allowedCustomIconTypes"    # [I

    .line 51
    new-instance v0, Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-direct {v0, p0}, Landroidx/car/app/model/constraints/CarIconConstraints;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public checkSupportedIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 5
    .param p1, "iconCompat"    # Landroidx/core/graphics/drawable/IconCompat;

    .line 81
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    .line 82
    .local v0, "type":I
    iget-object v1, p0, Landroidx/car/app/model/constraints/CarIconConstraints;->mAllowedTypes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    .line 83
    .local v4, "allowedType":I
    if-ne v0, v4, :cond_2

    .line 84
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI scheme for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_1
    :goto_1
    return-object p1

    .line 82
    .end local v4    # "allowedType":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Custom icon type is not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public validateOrThrow(Landroidx/car/app/model/CarIcon;)V
    .locals 3
    .param p1, "carIcon"    # Landroidx/car/app/model/CarIcon;

    .line 62
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/car/app/model/CarIcon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroidx/car/app/model/CarIcon;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 67
    .local v0, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0, v0}, Landroidx/car/app/model/constraints/CarIconConstraints;->checkSupportedIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/graphics/drawable/IconCompat;

    .line 72
    return-void

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Custom icon does not have a backing IconCompat"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local v0    # "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    :cond_2
    :goto_0
    return-void
.end method
