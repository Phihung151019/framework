.class public final Landroidx/car/app/suggestion/model/Suggestion;
.super Ljava/lang/Object;
.source "Suggestion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/suggestion/model/Suggestion$Builder;
    }
.end annotation


# instance fields
.field private final mAction:Landroid/app/PendingIntent;

.field private final mIcon:Landroidx/car/app/model/CarIcon;

.field private final mIdentifier:Ljava/lang/String;

.field private final mSubtitle:Landroidx/car/app/model/CarText;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIdentifier:Ljava/lang/String;

    .line 155
    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mTitle:Landroidx/car/app/model/CarText;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mSubtitle:Landroidx/car/app/model/CarText;

    .line 157
    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 158
    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mAction:Landroid/app/PendingIntent;

    .line 159
    return-void
.end method

.method constructor <init>(Landroidx/car/app/suggestion/model/Suggestion$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/suggestion/model/Suggestion$Builder;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iget-object v0, p1, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIdentifier:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mTitle:Landroidx/car/app/model/CarText;

    .line 147
    iget-object v0, p1, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mSubtitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mSubtitle:Landroidx/car/app/model/CarText;

    .line 148
    iget-object v0, p1, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 149
    iget-object v0, p1, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mAction:Landroid/app/PendingIntent;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mAction:Landroid/app/PendingIntent;

    .line 150
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 124
    return v0

    .line 127
    :cond_0
    instance-of v1, p1, Landroidx/car/app/suggestion/model/Suggestion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 128
    return v2

    .line 131
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/suggestion/model/Suggestion;

    .line 132
    .local v1, "otherDestination":Landroidx/car/app/suggestion/model/Suggestion;
    iget-object v3, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIdentifier:Ljava/lang/String;

    iget-object v4, v1, Landroidx/car/app/suggestion/model/Suggestion;->mIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/suggestion/model/Suggestion;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/suggestion/model/Suggestion;->mTitle:Landroidx/car/app/model/CarText;

    .line 133
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/suggestion/model/Suggestion;->mSubtitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/suggestion/model/Suggestion;->mSubtitle:Landroidx/car/app/model/CarText;

    .line 134
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/suggestion/model/Suggestion;->mAction:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroidx/car/app/suggestion/model/Suggestion;->mAction:Landroid/app/PendingIntent;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/suggestion/model/Suggestion;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 136
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 132
    :goto_0
    return v0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIcon:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mSubtitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 141
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIdentifier:Ljava/lang/String;

    iget-object v1, p0, Landroidx/car/app/suggestion/model/Suggestion;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v2, p0, Landroidx/car/app/suggestion/model/Suggestion;->mSubtitle:Landroidx/car/app/model/CarText;

    iget-object v3, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, p0, Landroidx/car/app/suggestion/model/Suggestion;->mAction:Landroid/app/PendingIntent;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/suggestion/model/Suggestion;->mTitle:Landroidx/car/app/model/CarText;

    .line 111
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/suggestion/model/Suggestion;->mSubtitle:Landroidx/car/app/model/CarText;

    .line 113
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pendingIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/suggestion/model/Suggestion;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/suggestion/model/Suggestion;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method
