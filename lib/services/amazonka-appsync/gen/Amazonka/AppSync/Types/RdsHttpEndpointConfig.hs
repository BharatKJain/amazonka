{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AppSync.Types.RdsHttpEndpointConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppSync.Types.RdsHttpEndpointConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The Amazon RDS HTTP endpoint configuration.
--
-- /See:/ 'newRdsHttpEndpointConfig' smart constructor.
data RdsHttpEndpointConfig = RdsHttpEndpointConfig'
  { -- | Logical database name.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | Amazon RDS cluster ARN.
    dbClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | Amazon Web Services Region for RDS HTTP endpoint.
    awsRegion :: Prelude.Maybe Prelude.Text,
    -- | Logical schema name.
    schema :: Prelude.Maybe Prelude.Text,
    -- | Amazon Web Services secret store ARN for database credentials.
    awsSecretStoreArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RdsHttpEndpointConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'databaseName', 'rdsHttpEndpointConfig_databaseName' - Logical database name.
--
-- 'dbClusterIdentifier', 'rdsHttpEndpointConfig_dbClusterIdentifier' - Amazon RDS cluster ARN.
--
-- 'awsRegion', 'rdsHttpEndpointConfig_awsRegion' - Amazon Web Services Region for RDS HTTP endpoint.
--
-- 'schema', 'rdsHttpEndpointConfig_schema' - Logical schema name.
--
-- 'awsSecretStoreArn', 'rdsHttpEndpointConfig_awsSecretStoreArn' - Amazon Web Services secret store ARN for database credentials.
newRdsHttpEndpointConfig ::
  RdsHttpEndpointConfig
newRdsHttpEndpointConfig =
  RdsHttpEndpointConfig'
    { databaseName =
        Prelude.Nothing,
      dbClusterIdentifier = Prelude.Nothing,
      awsRegion = Prelude.Nothing,
      schema = Prelude.Nothing,
      awsSecretStoreArn = Prelude.Nothing
    }

-- | Logical database name.
rdsHttpEndpointConfig_databaseName :: Lens.Lens' RdsHttpEndpointConfig (Prelude.Maybe Prelude.Text)
rdsHttpEndpointConfig_databaseName = Lens.lens (\RdsHttpEndpointConfig' {databaseName} -> databaseName) (\s@RdsHttpEndpointConfig' {} a -> s {databaseName = a} :: RdsHttpEndpointConfig)

-- | Amazon RDS cluster ARN.
rdsHttpEndpointConfig_dbClusterIdentifier :: Lens.Lens' RdsHttpEndpointConfig (Prelude.Maybe Prelude.Text)
rdsHttpEndpointConfig_dbClusterIdentifier = Lens.lens (\RdsHttpEndpointConfig' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@RdsHttpEndpointConfig' {} a -> s {dbClusterIdentifier = a} :: RdsHttpEndpointConfig)

-- | Amazon Web Services Region for RDS HTTP endpoint.
rdsHttpEndpointConfig_awsRegion :: Lens.Lens' RdsHttpEndpointConfig (Prelude.Maybe Prelude.Text)
rdsHttpEndpointConfig_awsRegion = Lens.lens (\RdsHttpEndpointConfig' {awsRegion} -> awsRegion) (\s@RdsHttpEndpointConfig' {} a -> s {awsRegion = a} :: RdsHttpEndpointConfig)

-- | Logical schema name.
rdsHttpEndpointConfig_schema :: Lens.Lens' RdsHttpEndpointConfig (Prelude.Maybe Prelude.Text)
rdsHttpEndpointConfig_schema = Lens.lens (\RdsHttpEndpointConfig' {schema} -> schema) (\s@RdsHttpEndpointConfig' {} a -> s {schema = a} :: RdsHttpEndpointConfig)

-- | Amazon Web Services secret store ARN for database credentials.
rdsHttpEndpointConfig_awsSecretStoreArn :: Lens.Lens' RdsHttpEndpointConfig (Prelude.Maybe Prelude.Text)
rdsHttpEndpointConfig_awsSecretStoreArn = Lens.lens (\RdsHttpEndpointConfig' {awsSecretStoreArn} -> awsSecretStoreArn) (\s@RdsHttpEndpointConfig' {} a -> s {awsSecretStoreArn = a} :: RdsHttpEndpointConfig)

instance Core.FromJSON RdsHttpEndpointConfig where
  parseJSON =
    Core.withObject
      "RdsHttpEndpointConfig"
      ( \x ->
          RdsHttpEndpointConfig'
            Prelude.<$> (x Core..:? "databaseName")
            Prelude.<*> (x Core..:? "dbClusterIdentifier")
            Prelude.<*> (x Core..:? "awsRegion")
            Prelude.<*> (x Core..:? "schema")
            Prelude.<*> (x Core..:? "awsSecretStoreArn")
      )

instance Prelude.Hashable RdsHttpEndpointConfig where
  hashWithSalt _salt RdsHttpEndpointConfig' {..} =
    _salt `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` dbClusterIdentifier
      `Prelude.hashWithSalt` awsRegion
      `Prelude.hashWithSalt` schema
      `Prelude.hashWithSalt` awsSecretStoreArn

instance Prelude.NFData RdsHttpEndpointConfig where
  rnf RdsHttpEndpointConfig' {..} =
    Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf dbClusterIdentifier
      `Prelude.seq` Prelude.rnf awsRegion
      `Prelude.seq` Prelude.rnf schema
      `Prelude.seq` Prelude.rnf awsSecretStoreArn

instance Core.ToJSON RdsHttpEndpointConfig where
  toJSON RdsHttpEndpointConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("databaseName" Core..=) Prelude.<$> databaseName,
            ("dbClusterIdentifier" Core..=)
              Prelude.<$> dbClusterIdentifier,
            ("awsRegion" Core..=) Prelude.<$> awsRegion,
            ("schema" Core..=) Prelude.<$> schema,
            ("awsSecretStoreArn" Core..=)
              Prelude.<$> awsSecretStoreArn
          ]
      )
