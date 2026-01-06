.class public final Landroid/location/QzssAssistance;
.super Ljava/lang/Object;
.source "QzssAssistance.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/QzssAssistance$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/QzssAssistance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlmanac:Landroid/location/GnssAlmanac;

.field private final blacklist mAuxiliaryInformation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

.field private final blacklist mLeapSecondsModel:Landroid/location/LeapSecondsModel;

.field private final blacklist mRealTimeIntegrityModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSatelliteCorrections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSatelliteEphemeris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/QzssSatelliteEphemeris;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTimeModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUtcModel:Landroid/location/UtcModel;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Landroid/location/QzssAssistance$1;

    invoke-direct {v0}, Landroid/location/QzssAssistance$1;-><init>()V

    sput-object v0, Landroid/location/QzssAssistance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/QzssAssistance$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/location/QzssAssistance$Builder;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmAlmanac(Landroid/location/QzssAssistance$Builder;)Landroid/location/GnssAlmanac;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mAlmanac:Landroid/location/GnssAlmanac;

    .line 70
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmIonosphericModel(Landroid/location/QzssAssistance$Builder;)Landroid/location/KlobucharIonosphericModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

    .line 71
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmUtcModel(Landroid/location/QzssAssistance$Builder;)Landroid/location/UtcModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mUtcModel:Landroid/location/UtcModel;

    .line 72
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmLeapSecondsModel(Landroid/location/QzssAssistance$Builder;)Landroid/location/LeapSecondsModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    .line 73
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmAuxiliaryInformation(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmAuxiliaryInformation(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mAuxiliaryInformation:Ljava/util/List;

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/QzssAssistance;->mAuxiliaryInformation:Ljava/util/List;

    .line 79
    :goto_0
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmTimeModels(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmTimeModels(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mTimeModels:Ljava/util/List;

    goto :goto_1

    .line 82
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/QzssAssistance;->mTimeModels:Ljava/util/List;

    .line 84
    :goto_1
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmSatelliteEphemeris(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmSatelliteEphemeris(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mSatelliteEphemeris:Ljava/util/List;

    goto :goto_2

    .line 88
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/QzssAssistance;->mSatelliteEphemeris:Ljava/util/List;

    .line 90
    :goto_2
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmRealTimeIntegrityModels(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmRealTimeIntegrityModels(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    goto :goto_3

    .line 94
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/QzssAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    .line 96
    :goto_3
    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmSatelliteCorrections(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/QzssAssistance$Builder;->-$$Nest$fgetmSatelliteCorrections(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssAssistance;->mSatelliteCorrections:Ljava/util/List;

    goto :goto_4

    .line 100
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/QzssAssistance;->mSatelliteCorrections:Ljava/util/List;

    .line 102
    :goto_4
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/QzssAssistance$Builder;Landroid/location/QzssAssistance-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/location/QzssAssistance;-><init>(Landroid/location/QzssAssistance$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAlmanac()Landroid/location/GnssAlmanac;
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/location/QzssAssistance;->mAlmanac:Landroid/location/GnssAlmanac;

    return-object v0
.end method

.method public blacklist getAuxiliaryInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/location/QzssAssistance;->mAuxiliaryInformation:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getIonosphericModel()Landroid/location/KlobucharIonosphericModel;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/location/QzssAssistance;->mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

    return-object v0
.end method

.method public blacklist getLeapSecondsModel()Landroid/location/LeapSecondsModel;
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/location/QzssAssistance;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    return-object v0
.end method

.method public blacklist getRealTimeIntegrityModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/location/QzssAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSatelliteCorrections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroid/location/QzssAssistance;->mSatelliteCorrections:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSatelliteEphemeris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/QzssSatelliteEphemeris;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/location/QzssAssistance;->mSatelliteEphemeris:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTimeModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/location/QzssAssistance;->mTimeModels:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUtcModel()Landroid/location/UtcModel;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/location/QzssAssistance;->mUtcModel:Landroid/location/UtcModel;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QzssAssistance["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "almanac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mAlmanac:Landroid/location/GnssAlmanac;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ", ionosphericModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", utcModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mUtcModel:Landroid/location/UtcModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, ", leapSecondsModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ", auxiliaryInformation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mAuxiliaryInformation:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ", timeModels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mTimeModels:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ", satelliteEphemeris = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mSatelliteEphemeris:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", realTimeIntegrityModels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", satelliteCorrections = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssAssistance;->mSatelliteCorrections:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 194
    iget-object v0, p0, Landroid/location/QzssAssistance;->mAlmanac:Landroid/location/GnssAlmanac;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 195
    iget-object v0, p0, Landroid/location/QzssAssistance;->mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 196
    iget-object v0, p0, Landroid/location/QzssAssistance;->mUtcModel:Landroid/location/UtcModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    iget-object v0, p0, Landroid/location/QzssAssistance;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 198
    iget-object v0, p0, Landroid/location/QzssAssistance;->mAuxiliaryInformation:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 199
    iget-object v0, p0, Landroid/location/QzssAssistance;->mTimeModels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Landroid/location/QzssAssistance;->mSatelliteEphemeris:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 201
    iget-object v0, p0, Landroid/location/QzssAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Landroid/location/QzssAssistance;->mSatelliteCorrections:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 203
    return-void
.end method
