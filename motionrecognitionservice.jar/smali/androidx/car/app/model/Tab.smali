.class public final Landroidx/car/app/model/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroidx/car/app/model/Content;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Tab$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_TAB_CONTENT_ID:Ljava/lang/String; = "EMPTY_TAB_CONTENT_ID"


# instance fields
.field private final mContentId:Ljava/lang/String;

.field private final mIcon:Landroidx/car/app/model/CarIcon;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Tab;->mTitle:Landroidx/car/app/model/CarText;

    .line 129
    const-string v1, "EMPTY_TAB_CONTENT_ID"

    iput-object v1, p0, Landroidx/car/app/model/Tab;->mContentId:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Landroidx/car/app/model/Tab;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 131
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Tab$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Tab$Builder;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p1, Landroidx/car/app/model/Tab$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Tab;->mTitle:Landroidx/car/app/model/CarText;

    .line 117
    iget-object v0, p1, Landroidx/car/app/model/Tab$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/Tab;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 119
    iget-object v0, p1, Landroidx/car/app/model/Tab$Builder;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p1, Landroidx/car/app/model/Tab$Builder;->mContentId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/model/Tab;->mContentId:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_0
    const-string v0, "EMPTY_TAB_CONTENT_ID"

    iput-object v0, p0, Landroidx/car/app/model/Tab;->mContentId:Ljava/lang/String;

    .line 124
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Tab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 106
    return v2

    .line 108
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Tab;

    .line 110
    .local v1, "otherTab":Landroidx/car/app/model/Tab;
    iget-object v3, p0, Landroidx/car/app/model/Tab;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/Tab;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Tab;->mContentId:Ljava/lang/String;

    iget-object v4, v1, Landroidx/car/app/model/Tab;->mContentId:Ljava/lang/String;

    .line 111
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Tab;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/model/Tab;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 112
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 110
    :goto_0
    return v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/car/app/model/Tab;->mContentId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/car/app/model/Tab;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/car/app/model/Tab;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 94
    iget-object v0, p0, Landroidx/car/app/model/Tab;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v1, p0, Landroidx/car/app/model/Tab;->mContentId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/car/app/model/Tab;->mIcon:Landroidx/car/app/model/CarIcon;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Tab;->mTitle:Landroidx/car/app/model/CarText;

    .line 84
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Tab;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Tab;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method
