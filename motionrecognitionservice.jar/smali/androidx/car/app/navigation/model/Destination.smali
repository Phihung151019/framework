.class public final Landroidx/car/app/navigation/model/Destination;
.super Ljava/lang/Object;
.source "Destination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/Destination$Builder;
    }
.end annotation


# instance fields
.field private final mAddress:Landroidx/car/app/model/CarText;

.field private final mImage:Landroidx/car/app/model/CarIcon;

.field private final mName:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mName:Landroidx/car/app/model/CarText;

    .line 114
    iput-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mAddress:Landroidx/car/app/model/CarText;

    .line 115
    iput-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mImage:Landroidx/car/app/model/CarIcon;

    .line 116
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/Destination$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/Destination$Builder;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget-object v0, p1, Landroidx/car/app/navigation/model/Destination$Builder;->mName:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mName:Landroidx/car/app/model/CarText;

    .line 107
    iget-object v0, p1, Landroidx/car/app/navigation/model/Destination$Builder;->mAddress:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mAddress:Landroidx/car/app/model/CarText;

    .line 108
    iget-object v0, p1, Landroidx/car/app/navigation/model/Destination$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mImage:Landroidx/car/app/model/CarIcon;

    .line 109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 87
    return v0

    .line 90
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/Destination;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 91
    return v2

    .line 94
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/Destination;

    .line 95
    .local v1, "otherDestination":Landroidx/car/app/navigation/model/Destination;
    iget-object v3, p0, Landroidx/car/app/navigation/model/Destination;->mName:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Destination;->mName:Landroidx/car/app/model/CarText;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Destination;->mAddress:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Destination;->mAddress:Landroidx/car/app/model/CarText;

    .line 96
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Destination;->mImage:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Destination;->mImage:Landroidx/car/app/model/CarIcon;

    .line 97
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 95
    :goto_0
    return v0
.end method

.method public getAddress()Landroidx/car/app/model/CarText;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mAddress:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getImage()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mImage:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getName()Landroidx/car/app/model/CarText;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mName:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 102
    iget-object v0, p0, Landroidx/car/app/navigation/model/Destination;->mName:Landroidx/car/app/model/CarText;

    iget-object v1, p0, Landroidx/car/app/navigation/model/Destination;->mAddress:Landroidx/car/app/model/CarText;

    iget-object v2, p0, Landroidx/car/app/navigation/model/Destination;->mImage:Landroidx/car/app/model/CarIcon;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Destination;->mName:Landroidx/car/app/model/CarText;

    .line 76
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Destination;->mAddress:Landroidx/car/app/model/CarText;

    .line 78
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Destination;->mImage:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method
