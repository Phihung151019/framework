.class public final Landroidx/car/app/navigation/model/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"

# interfaces
.implements Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/MessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final mImage:Landroidx/car/app/model/CarIcon;

.field private final mText:Landroidx/car/app/model/CarText;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mTitle:Landroidx/car/app/model/CarText;

    .line 111
    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mText:Landroidx/car/app/model/CarText;

    .line 112
    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mImage:Landroidx/car/app/model/CarIcon;

    .line 113
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/MessageInfo$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/MessageInfo$Builder;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-object v0, p1, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mTitle:Landroidx/car/app/model/CarText;

    .line 104
    iget-object v0, p1, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mText:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mText:Landroidx/car/app/model/CarText;

    .line 105
    iget-object v0, p1, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mImage:Landroidx/car/app/model/CarIcon;

    .line 106
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 90
    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/MessageInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 93
    return v2

    .line 95
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/MessageInfo;

    .line 97
    .local v1, "otherInfo":Landroidx/car/app/navigation/model/MessageInfo;
    iget-object v3, p0, Landroidx/car/app/navigation/model/MessageInfo;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MessageInfo;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/MessageInfo;->mText:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MessageInfo;->mText:Landroidx/car/app/model/CarText;

    .line 98
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/MessageInfo;->mImage:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MessageInfo;->mImage:Landroidx/car/app/model/CarIcon;

    .line 99
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 97
    :goto_0
    return v0
.end method

.method public getImage()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mImage:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getText()Landroidx/car/app/model/CarText;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mText:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v1, p0, Landroidx/car/app/navigation/model/MessageInfo;->mText:Landroidx/car/app/model/CarText;

    iget-object v2, p0, Landroidx/car/app/navigation/model/MessageInfo;->mImage:Landroidx/car/app/model/CarIcon;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "MessageInfo"

    return-object v0
.end method
