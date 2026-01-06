.class public final Landroidx/car/app/model/Pane$Builder;
.super Ljava/lang/Object;
.source "Pane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Pane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field mImage:Landroidx/car/app/model/CarIcon;

.field mIsLoading:Z

.field final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/Pane$Builder;->mRows:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/Pane$Builder;->mActionList:Ljava/util/List;

    .line 218
    return-void
.end method

.method private size()I
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/car/app/model/Pane$Builder;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/Pane$Builder;
    .locals 1
    .param p1, "action"    # Landroidx/car/app/model/Action;

    .line 171
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Landroidx/car/app/model/Pane$Builder;->mActionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object p0
.end method

.method public addRow(Landroidx/car/app/model/Row;)Landroidx/car/app/model/Pane$Builder;
    .locals 2
    .param p1, "row"    # Landroidx/car/app/model/Row;

    .line 158
    iget-object v0, p0, Landroidx/car/app/model/Pane$Builder;->mRows:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Row;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object p0
.end method

.method public build()Landroidx/car/app/model/Pane;
    .locals 3

    .line 203
    invoke-direct {p0}, Landroidx/car/app/model/Pane$Builder;->size()I

    move-result v0

    .line 204
    .local v0, "size":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/car/app/model/Pane$Builder;->mIsLoading:Z

    if-eq v1, v2, :cond_1

    .line 209
    new-instance v1, Landroidx/car/app/model/Pane;

    invoke-direct {v1, p0}, Landroidx/car/app/model/Pane;-><init>(Landroidx/car/app/model/Pane$Builder;)V

    return-object v1

    .line 205
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The pane is set to loading but is not empty, or vice versa"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/Pane$Builder;
    .locals 1
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 191
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/Pane$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    .line 192
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/model/Pane$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 147
    iput-boolean p1, p0, Landroidx/car/app/model/Pane$Builder;->mIsLoading:Z

    .line 148
    return-object p0
.end method
