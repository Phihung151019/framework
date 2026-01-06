.class public Landroid/nfc/ComponentNameAndUser;
.super Ljava/lang/Object;
.source "ComponentNameAndUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/ComponentNameAndUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Landroid/nfc/ComponentNameAndUser$1;

    invoke-direct {v0}, Landroid/nfc/ComponentNameAndUser$1;-><init>()V

    sput-object v0, Landroid/nfc/ComponentNameAndUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/nfc/ComponentNameAndUser;->mUserId:I

    .line 35
    iput-object p2, p0, Landroid/nfc/ComponentNameAndUser;->mComponentName:Landroid/content/ComponentName;

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/ComponentNameAndUser;->mUserId:I

    .line 66
    const/4 v0, 0x0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/nfc/ComponentNameAndUser;->mComponentName:Landroid/content/ComponentName;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/nfc/ComponentNameAndUser-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/ComponentNameAndUser;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/nfc/ComponentNameAndUser;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, p1

    check-cast v1, Landroid/nfc/ComponentNameAndUser;

    .line 87
    .local v1, "other":Landroid/nfc/ComponentNameAndUser;
    invoke-virtual {v1}, Landroid/nfc/ComponentNameAndUser;->getUserId()I

    move-result v2

    iget v3, p0, Landroid/nfc/ComponentNameAndUser;->mUserId:I

    if-ne v2, v3, :cond_0

    .line 88
    invoke-virtual {v1}, Landroid/nfc/ComponentNameAndUser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/ComponentNameAndUser;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 87
    :goto_0
    return v0

    .line 90
    .end local v1    # "other":Landroid/nfc/ComponentNameAndUser;
    :cond_1
    return v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/nfc/ComponentNameAndUser;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    .line 71
    iget v0, p0, Landroid/nfc/ComponentNameAndUser;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 95
    iget-object v0, p0, Landroid/nfc/ComponentNameAndUser;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 96
    iget v0, p0, Landroid/nfc/ComponentNameAndUser;->mUserId:I

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/nfc/ComponentNameAndUser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/nfc/ComponentNameAndUser;->mUserId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/nfc/ComponentNameAndUser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for user id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nfc/ComponentNameAndUser;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    iget v0, p0, Landroid/nfc/ComponentNameAndUser;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Landroid/nfc/ComponentNameAndUser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    return-void
.end method
