.class public final Landroidx/car/app/model/Alert;
.super Ljava/lang/Object;
.source "Alert.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Alert$Builder;
    }
.end annotation


# static fields
.field private static final MAX_ACTION_COUNT:I = 0x2


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDelegate:Landroidx/car/app/model/AlertCallbackDelegate;

.field private final mDuration:J

.field private final mIcon:Landroidx/car/app/model/CarIcon;

.field private final mId:I

.field private final mSubtitle:Landroidx/car/app/model/CarText;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/Alert;->mId:I

    .line 136
    const-string v0, ""

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Alert;->mTitle:Landroidx/car/app/model/CarText;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Alert;->mSubtitle:Landroidx/car/app/model/CarText;

    .line 138
    iput-object v0, p0, Landroidx/car/app/model/Alert;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/car/app/model/Alert;->mActions:Ljava/util/List;

    .line 140
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/car/app/model/Alert;->mDuration:J

    .line 141
    iput-object v0, p0, Landroidx/car/app/model/Alert;->mCallbackDelegate:Landroidx/car/app/model/AlertCallbackDelegate;

    .line 142
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Alert$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/car/app/model/Alert$Builder;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget v0, p1, Landroidx/car/app/model/Alert$Builder;->mId:I

    iput v0, p0, Landroidx/car/app/model/Alert;->mId:I

    .line 125
    iget-object v0, p1, Landroidx/car/app/model/Alert$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Alert;->mTitle:Landroidx/car/app/model/CarText;

    .line 126
    iget-object v0, p1, Landroidx/car/app/model/Alert$Builder;->mSubtitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Alert;->mSubtitle:Landroidx/car/app/model/CarText;

    .line 127
    iget-object v0, p1, Landroidx/car/app/model/Alert$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/Alert;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 128
    iget-object v0, p1, Landroidx/car/app/model/Alert$Builder;->mActions:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Alert;->mActions:Ljava/util/List;

    .line 129
    iget-wide v0, p1, Landroidx/car/app/model/Alert$Builder;->mDuration:J

    iput-wide v0, p0, Landroidx/car/app/model/Alert;->mDuration:J

    .line 130
    iget-object v0, p1, Landroidx/car/app/model/Alert$Builder;->mCallbackDelegate:Landroidx/car/app/model/AlertCallbackDelegate;

    iput-object v0, p0, Landroidx/car/app/model/Alert;->mCallbackDelegate:Landroidx/car/app/model/AlertCallbackDelegate;

    .line 131
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 152
    return v0

    .line 154
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Alert;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 155
    return v2

    .line 157
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Alert;

    .line 160
    .local v1, "otherAlert":Landroidx/car/app/model/Alert;
    iget v3, p0, Landroidx/car/app/model/Alert;->mId:I

    iget v4, v1, Landroidx/car/app/model/Alert;->mId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroidx/car/app/model/Alert;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getCallbackDelegate()Landroidx/car/app/model/AlertCallbackDelegate;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/car/app/model/Alert;->mCallbackDelegate:Landroidx/car/app/model/AlertCallbackDelegate;

    return-object v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 104
    iget-wide v0, p0, Landroidx/car/app/model/Alert;->mDuration:J

    return-wide v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/car/app/model/Alert;->mIcon:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 61
    iget v0, p0, Landroidx/car/app/model/Alert;->mId:I

    return v0
.end method

.method public getSubtitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/car/app/model/Alert;->mSubtitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/car/app/model/Alert;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 146
    iget v0, p0, Landroidx/car/app/model/Alert;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/Alert;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Alert;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Alert;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
