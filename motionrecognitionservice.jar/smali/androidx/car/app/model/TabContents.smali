.class public Landroidx/car/app/model/TabContents;
.super Ljava/lang/Object;
.source "TabContents.java"

# interfaces
.implements Landroidx/car/app/model/Content;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/TabContents$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_ID:Ljava/lang/String; = "TAB_CONTENTS_CONTENT_ID"


# instance fields
.field private final mTemplate:Landroidx/car/app/model/Template;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/TabContents;->mTemplate:Landroidx/car/app/model/Template;

    .line 98
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/TabContents$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/TabContents$Builder;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iget-object v0, p1, Landroidx/car/app/model/TabContents$Builder;->mTemplate:Landroidx/car/app/model/Template;

    iput-object v0, p0, Landroidx/car/app/model/TabContents;->mTemplate:Landroidx/car/app/model/Template;

    .line 93
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    if-ne p0, p1, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/TabContents;

    if-nez v0, :cond_1

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/TabContents;

    .line 88
    .local v0, "otherTabContents":Landroidx/car/app/model/TabContents;
    iget-object v1, p0, Landroidx/car/app/model/TabContents;->mTemplate:Landroidx/car/app/model/Template;

    iget-object v2, v0, Landroidx/car/app/model/TabContents;->mTemplate:Landroidx/car/app/model/Template;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "TAB_CONTENTS_CONTENT_ID"

    return-object v0
.end method

.method public getTemplate()Landroidx/car/app/model/Template;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/car/app/model/TabContents;->mTemplate:Landroidx/car/app/model/Template;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Template;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/car/app/model/TabContents;->mTemplate:Landroidx/car/app/model/Template;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[template: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/TabContents;->mTemplate:Landroidx/car/app/model/Template;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
