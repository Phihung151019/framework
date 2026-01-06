.class public interface abstract Lcom/android/internal/telephony/uicc/IsimRecords;
.super Ljava/lang/Object;
.source "IsimRecords.java"


# virtual methods
.method public abstract blacklist getAid()Ljava/lang/String;
.end method

.method public abstract blacklist getBtid()Ljava/lang/String;
.end method

.method public abstract greylist-max-r getIsimDomain()Ljava/lang/String;
.end method

.method public abstract greylist-max-r getIsimImpi()Ljava/lang/String;
.end method

.method public abstract greylist-max-r getIsimImpu()[Ljava/lang/String;
.end method

.method public abstract blacklist getIsimIst()Ljava/lang/String;
.end method

.method public abstract blacklist getIsimMsisdn()Ljava/lang/String;
.end method

.method public abstract blacklist getIsimPcscf()[Ljava/lang/String;
.end method

.method public abstract blacklist getKeyLifetime()Ljava/lang/String;
.end method

.method public abstract blacklist getRand()[B
.end method

.method public abstract blacklist isGbaSupported()Z
.end method

.method public abstract blacklist isSmoveripSupported()Z
.end method
