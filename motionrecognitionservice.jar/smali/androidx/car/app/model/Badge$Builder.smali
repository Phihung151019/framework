.class public final Landroidx/car/app/model/Badge$Builder;
.super Ljava/lang/Object;
.source "Badge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Badge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mBackgroundColor:Landroidx/car/app/model/CarColor;

.field mHasDot:Z

.field mIcon:Landroidx/car/app/model/CarIcon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/Badge;
    .locals 2

    .line 161
    iget-boolean v0, p0, Landroidx/car/app/model/Badge$Builder;->mHasDot:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/model/Badge$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A badge must have a dot or an icon set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/car/app/model/Badge$Builder;->mHasDot:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/car/app/model/Badge$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    if-nez v0, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The dot must be enabled to set the background color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    :goto_1
    new-instance v0, Landroidx/car/app/model/Badge;

    invoke-direct {v0, p0}, Landroidx/car/app/model/Badge;-><init>(Landroidx/car/app/model/Badge$Builder;)V

    return-object v0
.end method

.method public setBackgroundColor(Landroidx/car/app/model/CarColor;)Landroidx/car/app/model/Badge$Builder;
    .locals 0
    .param p1, "backgroundColor"    # Landroidx/car/app/model/CarColor;

    .line 137
    iput-object p1, p0, Landroidx/car/app/model/Badge$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 138
    return-object p0
.end method

.method public setHasDot(Z)Landroidx/car/app/model/Badge$Builder;
    .locals 0
    .param p1, "hasDot"    # Z

    .line 128
    iput-boolean p1, p0, Landroidx/car/app/model/Badge$Builder;->mHasDot:Z

    .line 129
    return-object p0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/Badge$Builder;
    .locals 0
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 150
    iput-object p1, p0, Landroidx/car/app/model/Badge$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 151
    return-object p0
.end method
