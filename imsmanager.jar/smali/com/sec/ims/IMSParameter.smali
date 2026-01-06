.class public Lcom/sec/ims/IMSParameter;
.super Ljava/lang/Object;
.source "IMSParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IMSParameter$GENERAL;,
        Lcom/sec/ims/IMSParameter$PRESENCE;,
        Lcom/sec/ims/IMSParameter$VZW_API_SUPPORT;,
        Lcom/sec/ims/IMSParameter$SSCONFIG;,
        Lcom/sec/ims/IMSParameter$SMS;,
        Lcom/sec/ims/IMSParameter$MEDIA;,
        Lcom/sec/ims/IMSParameter$TYPE_HOLDTONE;,
        Lcom/sec/ims/IMSParameter$CALL_DIRECTION;,
        Lcom/sec/ims/IMSParameter$CALL;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

.field private mPrimitiveMap:Landroid/os/Bundle;

.field private mProfileParams:[Lcom/sec/ims/IMSProfileParams;

.field private mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 416
    new-instance v0, Lcom/sec/ims/IMSParameter$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSParameter$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    .line 16
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    .line 17
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    .line 16
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    .line 17
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-class v0, Lcom/sec/ims/IMSAPCSInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/sec/ims/IMSAPCSInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSAPCSInfo;

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const-class v0, Lcom/sec/ims/IMSRegistrationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/sec/ims/IMSRegistrationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSRegistrationInfo;

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 172
    new-array v1, v0, [Lcom/sec/ims/IMSProfileParams;

    iput-object v1, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 175
    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    const-class v3, Lcom/sec/ims/IMSProfileParams;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Lcom/sec/ims/IMSProfileParams;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/IMSProfileParams;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/IMSParameter;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/IMSParameter;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 353
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 358
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/ims/IMSParameter;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getParcelable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 271
    const-string v0, "apcsinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    return-object p0

    .line 273
    :cond_0
    const-string v0, "registrationinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    return-object p0

    .line 277
    :cond_1
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public getParcelableArray(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 305
    const-string v0, "profileparams"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    return-object p0

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return-object p1

    .line 314
    :cond_1
    :try_start_0
    check-cast p0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public getSparseStringArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 334
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 335
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 209
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/IMSParameter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 368
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 372
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 347
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 348
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/IMSParameter;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 253
    const-string v0, "apcsinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/sec/ims/IMSAPCSInfo;

    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    check-cast p2, Lcom/sec/ims/IMSAPCSInfo;

    invoke-virtual {p2}, Lcom/sec/ims/IMSAPCSInfo;->clone()Lcom/sec/ims/IMSAPCSInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 259
    :cond_0
    const-string v0, "registrationinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/sec/ims/IMSRegistrationInfo;

    if-eqz v0, :cond_1

    .line 261
    :try_start_1
    check-cast p2, Lcom/sec/ims/IMSRegistrationInfo;

    invoke-virtual {p2}, Lcom/sec/ims/IMSRegistrationInfo;->clone()Lcom/sec/ims/IMSRegistrationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 2

    .line 290
    const-string v0, "profileparams"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, [Lcom/sec/ims/IMSProfileParams;

    if-eqz v0, :cond_1

    .line 292
    :try_start_0
    array-length p1, p2

    new-array p1, p1, [Lcom/sec/ims/IMSProfileParams;

    iput-object p1, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    const/4 p1, 0x0

    .line 293
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    aget-object v1, p2, p1

    check-cast v1, Lcom/sec/ims/IMSProfileParams;

    invoke-virtual {v1}, Lcom/sec/ims/IMSProfileParams;->clone()Lcom/sec/ims/IMSProfileParams;

    move-result-object v1

    aput-object v1, v0, p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :cond_0
    return-void

    .line 300
    :cond_1
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public putSparseStringArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 323
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/IMSParameter;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 364
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/IMSParameter;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 392
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    if-nez v0, :cond_1

    .line 400
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 402
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 406
    :goto_1
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    if-nez v0, :cond_2

    .line 407
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 409
    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    array-length v0, p0

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v1, p0, v2

    .line 411
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
