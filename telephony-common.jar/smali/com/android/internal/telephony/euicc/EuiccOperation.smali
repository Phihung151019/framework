.class public Lcom/android/internal/telephony/euicc/EuiccOperation;
.super Ljava/lang/Object;
.source "EuiccOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccOperation$Action;
    }
.end annotation


# static fields
.field static final blacklist ACTION_DOWNLOAD_CONFIRMATION_CODE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist ACTION_DOWNLOAD_DEACTIVATE_SIM:I = 0x2

.field static final blacklist ACTION_DOWNLOAD_NETWORK_LOCKED:I = 0xb

.field static final blacklist ACTION_DOWNLOAD_NO_EUICC:I = 0x65

.field static final blacklist ACTION_DOWNLOAD_NO_PRIVILEGES:I = 0x3

.field static final blacklist ACTION_DOWNLOAD_NO_PRIVILEGES_OR_DEACTIVATE_SIM_CHECK_METADATA:I = 0x9

.field static final blacklist ACTION_DOWNLOAD_RESOLVABLE_ERRORS:I = 0x7

.field static final blacklist ACTION_GET_DEFAULT_LIST_DEACTIVATE_SIM:I = 0x4

.field static final blacklist ACTION_GET_METADATA_DEACTIVATE_SIM:I = 0x1

.field static final blacklist ACTION_SWITCH_DEACTIVATE_SIM:I = 0x5

.field static final blacklist ACTION_SWITCH_NO_EUICC:I = 0x66

.field static final blacklist ACTION_SWITCH_NO_PRIVILEGES:I = 0x6

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/euicc/EuiccOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAction:I

.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mCallingToken:J

.field private final blacklist mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field private final blacklist mExistingSubscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMarkAsOwnedByAdmin:Z

.field private final blacklist mResolvableErrors:I

.field private final blacklist mSubscriptionId:I

.field private final blacklist mSwitchAfterDownload:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccOperation$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 274
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 275
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 276
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 277
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 278
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 279
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    .line 281
    iput-boolean p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mMarkAsOwnedByAdmin:Z

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mExistingSubscriptions:Ljava/util/Set;

    return-void
.end method

.method constructor blacklist <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;I)V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 255
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 256
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 257
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 258
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 259
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 260
    iput p8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mMarkAsOwnedByAdmin:Z

    const/4 p1, 0x0

    .line 263
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mExistingSubscriptions:Ljava/util/Set;

    return-void
.end method

.method constructor blacklist <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/telephony/euicc/DownloadableSubscription;",
            "IZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 296
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 297
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 298
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 299
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 300
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 301
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    .line 302
    iput-boolean p8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mMarkAsOwnedByAdmin:Z

    .line 303
    iput-object p9, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mExistingSubscriptions:Ljava/util/Set;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 310
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mMarkAsOwnedByAdmin:Z

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mExistingSubscriptions:Ljava/util/Set;

    return-void

    .line 321
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_1
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mExistingSubscriptions:Ljava/util/Set;

    return-void
.end method

.method private static blacklist fail(Landroid/app/PendingIntent;)V
    .locals 3

    .line 762
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public static blacklist forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x8

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 8

    .line 155
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forDownloadNoEuicc(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLjava/util/Set;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/telephony/euicc/DownloadableSubscription;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/internal/telephony/euicc/EuiccOperation;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x65

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;ZLjava/util/Set;)V

    return-object v0
.end method

.method static blacklist forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 8

    .line 177
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x9

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forDownloadResolvableErrors(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;I)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9

    .line 205
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x7

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;I)V

    return-object v0
.end method

.method static blacklist forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 8

    .line 211
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x0

    move-wide v2, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forGetMetadataDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 8

    .line 142
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-wide v2, p0

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forSwitchDeactivateSim(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 8

    .line 218
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x5

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forSwitchNoEuicc(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 8

    .line 241
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x66

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 8

    .line 225
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x6

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method private blacklist resolvedDownloadConfirmationCode(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, p2}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    move v2, p1

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadDeactivateSim(IIZLandroid/app/PendingIntent;)V
    .locals 9

    if-eqz p3, :cond_0

    .line 485
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    :cond_0
    move-object v8, p4

    .line 496
    invoke-static {v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadNoEuicc(IIZLandroid/app/PendingIntent;)V
    .locals 13

    if-eqz p3, :cond_0

    .line 702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 708
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mMarkAsOwnedByAdmin:Z

    iget-object v12, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mExistingSubscriptions:Ljava/util/Set;

    const/4 v7, 0x1

    const/4 v9, 0x0

    move v1, p1

    move v2, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;ZLjava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    throw p0

    .line 726
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadNoPrivileges(IZLandroid/app/PendingIntent;)V
    .locals 11

    if-eqz p2, :cond_0

    .line 504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 513
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    move v1, p1

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    throw p0

    :cond_0
    move-object v10, p3

    .line 528
    invoke-static {v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadNoPrivilegesOrDeactivateSimCheckMetadata(IIZLandroid/app/PendingIntent;)V
    .locals 11

    if-eqz p3, :cond_0

    .line 536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 542
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v7, 0x1

    move v1, p1

    move v2, p2

    move-object v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivilegedCheckMetadata(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    throw p0

    :cond_0
    move-object v10, p4

    .line 557
    invoke-static {v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadResolvableErrors(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 12

    .line 591
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/lit16 v0, v0, 0x300

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONSENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 598
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 599
    const-string v3, "android.service.euicc.extra.RESOLUTION_ALLOW_POLICY_RULES"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 603
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 604
    const-string v2, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 614
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void

    .line 616
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, v2}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v3

    const-string v0, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    .line 619
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x1

    move v4, p1

    move-object v10, p2

    move-object v11, p3

    .line 617
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedGetDefaultListDeactivateSim(IZLandroid/app/PendingIntent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 635
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object p2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 642
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedGetMetadataDeactivateSim(IZLandroid/app/PendingIntent;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 468
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    :cond_0
    move-object v5, p3

    .line 476
    invoke-static {v5}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedSwitchDeactivateSim(IIZLandroid/app/PendingIntent;Z)V
    .locals 8

    if-eqz p3, :cond_0

    .line 651
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    .line 652
    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move v3, p2

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void

    :cond_0
    move-object v6, p4

    .line 662
    invoke-static {v6}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedSwitchNoEuicc(IIZLandroid/app/PendingIntent;Z)V
    .locals 10

    if-eqz p3, :cond_0

    .line 734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 742
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    throw p0

    :cond_0
    move-object v8, p4

    .line 756
    invoke-static {v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedSwitchNoPrivileges(IIZLandroid/app/PendingIntent;Z)V
    .locals 10

    if-eqz p3, :cond_0

    .line 670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 678
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    .line 679
    iget v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    throw p0

    :cond_0
    move-object v8, p4

    .line 693
    invoke-static {v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public blacklist continueOperation(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 12

    .line 364
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    const/16 v1, 0x65

    const-string v2, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    const-string v3, "android.service.euicc.extra.RESOLUTION_CONSENT"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    const-string v5, "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EuiccOperation"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 386
    :pswitch_0
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 388
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 385
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivilegesOrDeactivateSimCheckMetadata(IIZLandroid/app/PendingIntent;)V

    return-void

    .line 392
    :pswitch_1
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    .line 393
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadConfirmationCode(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 397
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadResolvableErrors(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    .line 420
    :pswitch_3
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 424
    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 428
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    .line 427
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchNoPrivileges(IIZLandroid/app/PendingIntent;Z)V

    return-void

    :pswitch_4
    move-object v6, p0

    move v7, p1

    move-object v10, p3

    .line 406
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 410
    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 414
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 413
    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchDeactivateSim(IIZLandroid/app/PendingIntent;Z)V

    return-void

    :pswitch_5
    move-object v6, p0

    move v7, p1

    move-object v10, p3

    .line 401
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 400
    invoke-direct {v6, v7, p0, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetDefaultListDeactivateSim(IZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_6
    move-object v6, p0

    move v7, p1

    move-object v10, p3

    .line 381
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 380
    invoke-direct {v6, v7, p0, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivileges(IZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_7
    move-object v6, p0

    move v7, p1

    move-object v10, p3

    .line 374
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 376
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 373
    invoke-direct {v6, v7, p0, p1, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadDeactivateSim(IIZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_8
    move-object v6, p0

    move v7, p1

    move-object v10, p3

    .line 369
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 368
    invoke-direct {v6, v7, p0, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetMetadataDeactivateSim(IZLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    move-object v6, p0

    move v7, p1

    move-object v10, p3

    .line 444
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 448
    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 452
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 451
    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchNoEuicc(IIZLandroid/app/PendingIntent;Z)V

    return-void

    :cond_1
    move-object v6, p0

    move v7, p1

    move-object v10, p3

    .line 434
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 438
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 437
    invoke-direct {v6, v7, p0, p1, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoEuicc(IIZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 332
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 335
    iget p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-boolean p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-boolean p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mMarkAsOwnedByAdmin:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 341
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mExistingSubscriptions:Ljava/util/Set;

    if-nez p2, :cond_0

    const/4 p0, -0x1

    .line 342
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 344
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mExistingSubscriptions:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 346
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
