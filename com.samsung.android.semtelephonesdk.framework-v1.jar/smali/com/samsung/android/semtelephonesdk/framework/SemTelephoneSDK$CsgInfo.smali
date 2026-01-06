.class public final Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsgInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo$Category;
    }
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public plmn:Ljava/lang/String;

.field public rat:I

.field public signalStrength:I


# direct methods
.method static bridge synthetic -$$Nest$smfromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->fromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->toList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 2050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2054
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->id:I

    .line 2058
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->name:Ljava/lang/String;

    .line 2062
    iput-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->plmn:Ljava/lang/String;

    .line 2066
    iput v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->rat:I

    .line 2073
    const-string v1, "UNKNOWN"

    iput-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->category:Ljava/lang/String;

    .line 2077
    iput v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->signalStrength:I

    return-void
.end method

.method private static fromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;"
        }
    .end annotation

    .line 2080
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;

    invoke-direct {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;-><init>()V

    .line 2081
    .local v0, "info":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->id:I

    .line 2082
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->name:Ljava/lang/String;

    .line 2083
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->plmn:Ljava/lang/String;

    .line 2084
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->rat:I

    .line 2085
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->category:Ljava/lang/String;

    .line 2086
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->signalStrength:I

    .line 2087
    return-object v0
.end method

.method private static toList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;)Ljava/util/List;
    .locals 3
    .param p0, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2091
    const/4 v0, 0x6

    .line 2092
    .local v0, "NUMBER_OF_FIELDS":I
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2093
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2094
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2095
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->plmn:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2096
    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->rat:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2097
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->category:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2098
    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->signalStrength:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2099
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CsgInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->rat:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->signalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
