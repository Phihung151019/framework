.class public Lcom/samsung/android/nfc/adapter/LocalConfiguration;
.super Ljava/lang/Object;
.source "LocalConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/nfc/adapter/LocalConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_LISTEN_NFC_ALL_TECH:I = 0x7

.field public static final FLAG_LISTEN_NFC_PASSIVE_A:I = 0x1

.field public static final FLAG_LISTEN_NFC_PASSIVE_B:I = 0x2

.field public static final FLAG_LISTEN_NFC_PASSIVE_F:I = 0x4

.field public static final ROUTE_DH:Ljava/lang/String; = "DH"

.field public static final ROUTE_ESE:Ljava/lang/String; = "eSE"

.field public static final ROUTE_SIM:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "LocalConfiguration"


# instance fields
.field private mAidRoute:Ljava/lang/String;

.field private mIsoCountryCode:Ljava/lang/String;

.field private mIsoDepRoute:Ljava/lang/String;

.field private mListenTech:I

.field private mSystemCodeRoute:Ljava/lang/String;

.field private mTechnologyRoute:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAidRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mAidRoute:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsoCountryCode(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsoDepRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoDepRoute:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenTech(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mListenTech:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemCodeRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mSystemCodeRoute:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTechnologyRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mTechnologyRoute:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAidRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mAidRoute:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsoCountryCode(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoCountryCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsoDepRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoDepRoute:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmListenTech(Lcom/samsung/android/nfc/adapter/LocalConfiguration;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mListenTech:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSystemCodeRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mSystemCodeRoute:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTechnologyRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mTechnologyRoute:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$smcheckIsoCode(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->checkIsoCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcheckListenTech(I)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->checkListenTech(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcheckRoute(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->checkRoute(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoCountryCode:Ljava/lang/String;

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mListenTech:I

    .line 121
    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mAidRoute:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoDepRoute:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mTechnologyRoute:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mSystemCodeRoute:Ljava/lang/String;

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoCountryCode:Ljava/lang/String;

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mListenTech:I

    .line 121
    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mAidRoute:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoDepRoute:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mTechnologyRoute:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mSystemCodeRoute:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoCountryCode:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mListenTech:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mAidRoute:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoDepRoute:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mTechnologyRoute:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mSystemCodeRoute:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private static checkIsoCode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "isoCountryCode"    # Ljava/lang/String;

    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/nfc/adapter/LocalConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/nfc/adapter/LocalConfiguration$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0
.end method

.method private static checkListenTech(I)Z
    .locals 1
    .param p0, "listenMask"    # I

    .line 143
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_1

    and-int/lit8 v0, p0, -0x8

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static checkRoute(Ljava/lang/String;)Z
    .locals 2
    .param p0, "route"    # Ljava/lang/String;

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 152
    :cond_0
    const-string v0, "DH"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eSE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SIM"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static newBuilder()Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
    .locals 2

    .line 134
    new-instance v0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;-><init>(Lcom/samsung/android/nfc/adapter/LocalConfiguration-IA;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getAidRoute()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mAidRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoCountryCode()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoDepRoute()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoDepRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getListenTechMask()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mListenTech:I

    return v0
.end method

.method public getSystemCodeRoute()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mSystemCodeRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getTechnologyRoute()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mTechnologyRoute:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 52
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mListenTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mAidRoute:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mIsoDepRoute:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mTechnologyRoute:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->mSystemCodeRoute:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return-void
.end method
