.class public Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
.super Ljava/lang/Object;
.source "KMTDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/mtd/KMTDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "messageObject"
.end annotation


# instance fields
.field cb:Lcom/samsung/android/knox/mtd/IMtdCallback;

.field launchIntent:Landroid/content/Intent;

.field loc:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field url:Ljava/lang/String;

.field urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/knox/mtd/KMTDService;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "launchIntent"    # Landroid/content/Intent;
    .param p7, "cb"    # Lcom/samsung/android/knox/mtd/IMtdCallback;
    .param p8, "loc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/mtd/IMtdCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 281
    .local p6, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->url:Ljava/lang/String;

    .line 283
    iput-object p3, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->pkgName:Ljava/lang/String;

    .line 284
    iput p4, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->userId:I

    .line 285
    iput-object p5, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->launchIntent:Landroid/content/Intent;

    .line 286
    iput-object p6, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->urls:Ljava/util/List;

    .line 287
    iput-object p7, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->cb:Lcom/samsung/android/knox/mtd/IMtdCallback;

    .line 288
    iput-object p8, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->loc:Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method public getIMtdCallback()Lcom/samsung/android/knox/mtd/IMtdCallback;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->cb:Lcom/samsung/android/knox/mtd/IMtdCallback;

    return-object v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->launchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->loc:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->urls:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->userId:I

    return v0
.end method
