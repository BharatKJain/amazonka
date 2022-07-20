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
-- Module      : Amazonka.XRay.Types.Edge
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.XRay.Types.Edge where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.XRay.Types.Alias
import Amazonka.XRay.Types.EdgeStatistics
import Amazonka.XRay.Types.HistogramEntry

-- | Information about a connection between two services.
--
-- /See:/ 'newEdge' smart constructor.
data Edge = Edge'
  { -- | Aliases for the edge.
    aliases :: Prelude.Maybe [Alias],
    -- | Response statistics for segments on the edge.
    summaryStatistics :: Prelude.Maybe EdgeStatistics,
    -- | The end time of the last segment on the edge.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | A histogram that maps the spread of client response times on an edge.
    responseTimeHistogram :: Prelude.Maybe [HistogramEntry],
    -- | Identifier of the edge. Unique within a service map.
    referenceId :: Prelude.Maybe Prelude.Int,
    -- | The start time of the first segment on the edge.
    startTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Edge' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aliases', 'edge_aliases' - Aliases for the edge.
--
-- 'summaryStatistics', 'edge_summaryStatistics' - Response statistics for segments on the edge.
--
-- 'endTime', 'edge_endTime' - The end time of the last segment on the edge.
--
-- 'responseTimeHistogram', 'edge_responseTimeHistogram' - A histogram that maps the spread of client response times on an edge.
--
-- 'referenceId', 'edge_referenceId' - Identifier of the edge. Unique within a service map.
--
-- 'startTime', 'edge_startTime' - The start time of the first segment on the edge.
newEdge ::
  Edge
newEdge =
  Edge'
    { aliases = Prelude.Nothing,
      summaryStatistics = Prelude.Nothing,
      endTime = Prelude.Nothing,
      responseTimeHistogram = Prelude.Nothing,
      referenceId = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | Aliases for the edge.
edge_aliases :: Lens.Lens' Edge (Prelude.Maybe [Alias])
edge_aliases = Lens.lens (\Edge' {aliases} -> aliases) (\s@Edge' {} a -> s {aliases = a} :: Edge) Prelude.. Lens.mapping Lens.coerced

-- | Response statistics for segments on the edge.
edge_summaryStatistics :: Lens.Lens' Edge (Prelude.Maybe EdgeStatistics)
edge_summaryStatistics = Lens.lens (\Edge' {summaryStatistics} -> summaryStatistics) (\s@Edge' {} a -> s {summaryStatistics = a} :: Edge)

-- | The end time of the last segment on the edge.
edge_endTime :: Lens.Lens' Edge (Prelude.Maybe Prelude.UTCTime)
edge_endTime = Lens.lens (\Edge' {endTime} -> endTime) (\s@Edge' {} a -> s {endTime = a} :: Edge) Prelude.. Lens.mapping Core._Time

-- | A histogram that maps the spread of client response times on an edge.
edge_responseTimeHistogram :: Lens.Lens' Edge (Prelude.Maybe [HistogramEntry])
edge_responseTimeHistogram = Lens.lens (\Edge' {responseTimeHistogram} -> responseTimeHistogram) (\s@Edge' {} a -> s {responseTimeHistogram = a} :: Edge) Prelude.. Lens.mapping Lens.coerced

-- | Identifier of the edge. Unique within a service map.
edge_referenceId :: Lens.Lens' Edge (Prelude.Maybe Prelude.Int)
edge_referenceId = Lens.lens (\Edge' {referenceId} -> referenceId) (\s@Edge' {} a -> s {referenceId = a} :: Edge)

-- | The start time of the first segment on the edge.
edge_startTime :: Lens.Lens' Edge (Prelude.Maybe Prelude.UTCTime)
edge_startTime = Lens.lens (\Edge' {startTime} -> startTime) (\s@Edge' {} a -> s {startTime = a} :: Edge) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON Edge where
  parseJSON =
    Core.withObject
      "Edge"
      ( \x ->
          Edge'
            Prelude.<$> (x Core..:? "Aliases" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "SummaryStatistics")
            Prelude.<*> (x Core..:? "EndTime")
            Prelude.<*> ( x Core..:? "ResponseTimeHistogram"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ReferenceId")
            Prelude.<*> (x Core..:? "StartTime")
      )

instance Prelude.Hashable Edge where
  hashWithSalt _salt Edge' {..} =
    _salt `Prelude.hashWithSalt` aliases
      `Prelude.hashWithSalt` summaryStatistics
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` responseTimeHistogram
      `Prelude.hashWithSalt` referenceId
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData Edge where
  rnf Edge' {..} =
    Prelude.rnf aliases
      `Prelude.seq` Prelude.rnf summaryStatistics
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf responseTimeHistogram
      `Prelude.seq` Prelude.rnf referenceId
      `Prelude.seq` Prelude.rnf startTime
