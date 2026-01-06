.class public final Landroidx/car/app/navigation/model/Destination$Builder;
.super Ljava/lang/Object;
.source "Destination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/Destination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mAddress:Landroidx/car/app/model/CarText;

.field mImage:Landroidx/car/app/model/CarIcon;

.field mName:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/Destination;
    .locals 2

    .line 188
    iget-object v0, p0, Landroidx/car/app/navigation/model/Destination$Builder;->mName:Landroidx/car/app/model/CarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/app/navigation/model/Destination$Builder;->mName:Landroidx/car/app/model/CarText;

    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/car/app/navigation/model/Destination$Builder;->mAddress:Landroidx/car/app/model/CarText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/car/app/navigation/model/Destination$Builder;->mAddress:Landroidx/car/app/model/CarText;

    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    :cond_1
    new-instance v0, Landroidx/car/app/navigation/model/Destination;

    invoke-direct {v0, p0}, Landroidx/car/app/navigation/model/Destination;-><init>(Landroidx/car/app/navigation/model/Destination$Builder;)V

    return-object v0

    .line 189
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both name and address cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAddress(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/Destination$Builder;
    .locals 1
    .param p1, "address"    # Ljava/lang/CharSequence;

    .line 151
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Destination$Builder;->mAddress:Landroidx/car/app/model/CarText;

    .line 152
    return-object p0
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/navigation/model/Destination$Builder;
    .locals 2
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;

    .line 172
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 173
    iput-object p1, p0, Landroidx/car/app/navigation/model/Destination$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    .line 174
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/Destination$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Destination$Builder;->mName:Landroidx/car/app/model/CarText;

    .line 138
    return-object p0
.end method
